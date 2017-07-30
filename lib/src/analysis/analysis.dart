import 'package:antlr4dart/antlr4dart.dart';
import 'package:inflection/inflection.dart';
import 'package:recase/recase.dart';
import 'package:symbol_table/symbol_table.dart';
import '../dart/dart.dart';
import '../grammar/grammar.dart';

class TsInterfaceToDartTranspiler {
  final Map<String, dynamic> _objectTypes = {};
  final Map<String, List<DartClass>> _extends = {};

  String generate(String source) {
    var input = new StringSource(source);
    var lexer = new TsInterfaceLexer(input);
    var tokens = new CommonTokenSource(lexer);
    var parser = new TsInterfaceParser(tokens);
    var library = compileDartLibrary(parser.compilationUnit());

    print('Compiling the following classes:');

    for (var clazz in library.classes) print('  * ${clazz.name}');

    return library.compilePretty();
  }

  DartLibrary compileDartLibrary(CompilationUnitContext compilationUnit) {
    var scope = new SymbolTable();

    // Fill in common Dart types...
    scope
      ..add('boolean', value: 'bool', constant: true)
      ..add('string', value: 'String', constant: true)
      ..add('number', value: 'num', constant: true)
      ..add('Element',
          value: new _DependencyImport('Element', 'dart:html'), constant: true)
      ..add('HTMLElement',
          value: new _DependencyImport('HTMLElement', 'dart:html'),
          constant: true)
      ..add('Node',
          value: new _DependencyImport('Node', 'dart:html'), constant: true);

    var lib = new DartLibrary();

    // Register any union types
    for (var union in compilationUnit.getUnionTypeDecls()) {
      var name = union.name.text;
      var type = union.getType();

      if (type is UnionTypeContext) {
        var unionType = new _UnionType(_consolidateUnion(
            type.getType(0), type.getType(1), lib, scope, name, null));
        print('Registered union type $name => ${unionType.consolidated}');
        scope.add(name, value: unionType, constant: true);
      } else {
        var typeName = resolveTypeName(type, lib, scope, name, '');
        print('Registered union type $name => $typeName');
        scope.add(name, value: typeName, constant: true);
      }
    }

    // Create entries for each interface and namespace
    for (var interface in compilationUnit.getInterfaceDecls()) {
      var name = interface.getID().text;

      if (interface.getArrayKeyInterfaceFields().isNotEmpty) {
        // If there are any fields that look like:
        //
        // [key: string]: boolean | number | string;
        //
        // Then we should alias the entire type as Map<T, U>.
        var arrayField = interface.getArrayKeyInterfaceFields().first;
        var keyType =
            resolveTypeName(arrayField.keyType, lib, scope, name, 'key');
        var valueType =
            resolveTypeName(arrayField.valueType, lib, scope, name, 'value');
        var mapTypeName = 'Map<$keyType, $valueType>';
        scope.add(name, value: mapTypeName, constant: true);
        print('Aliased type $name as $mapTypeName');
      } else {
        var clazz = new DartClass(name, lib);
        clazz.generic = interface.typeArguments.isEmpty
            ? null
            : ('<' +
                interface.typeArguments
                    .map<String>((t) => resolveTypeName(
                        t, lib, scope, name, 'generic${t.hashCode}'))
                    .join(', ') +
                '>');
        lib.classes.add(clazz);
        scope.add(name, value: clazz, constant: true);
      }
    }

    for (var namespaceDecl in compilationUnit.getExportNamespaceDecls()) {
      var name = namespaceDecl.getID().text;
      var clazz = new DartClass(name, lib, asAbstract: true);
      lib.classes.add(clazz);
      scope.add(name, value: clazz, constant: true);
    }

    // Now, populate them
    for (var namespaceDecl in compilationUnit.getExportNamespaceDecls()) {
      var name = namespaceDecl.getID().text;
      var clazz = lib.classes.firstWhere((c) => c.name == name);
      populateNamespace(namespaceDecl, clazz, lib, scope);
    }

    for (var interface in compilationUnit.getInterfaceDecls()) {
      var name = interface.getID().text;
      var clazz =
          lib.classes.firstWhere((c) => c.name == name, orElse: () => null);
      if (clazz != null) populateInterface(interface, clazz, lib, scope);
    }

    return lib;
  }

  void populateNamespace(ExportNamespaceDeclContext ctx, DartClass clazz,
      DartLibrary lib, SymbolTable scope) {
    // Apply comment
    if (ctx.getComments().isNotEmpty)
      clazz.comment = ctx.getComments().map<String>((c) => c.text).join('\n');

    // Each constant value should become a static field
    for (var decl in ctx.getNamespaceFields()) {
      var name = decl.getID().text;
      String typeName =
          resolveTypeName(decl.getType(), lib, scope, clazz.name, name);

      if (typeName == 'dynamic' && decl.getExpr() != null)
        typeName = inferTypeName(decl.getExpr(), lib, scope) ?? 'dynamic';

      var field = new DartField(name, typeName,
          asStatic: true, rawValue: decl.getExpr()?.text);

      if (decl.getComments().isNotEmpty)
        field.comment =
            decl.getComments().map<String>((c) => c.text).join('\n');
      clazz.fields.add(field);
    }
  }

  void populateInterface(InterfaceDeclContext interface, DartClass clazz,
      DartLibrary lib, SymbolTable scope) {
    // Add each field...
    for (var fieldDecl in interface.getInterfaceFields()) {
      var name = fieldDecl.getID().text;
      var typeName =
          resolveTypeName(fieldDecl.getType(), lib, scope, clazz.name, name);

      print('Mapped ${clazz.name}@$name => $typeName');
      var field = new DartField(name, typeName);
      clazz.fields.add(field);
    }

    // Apply extends
    if (interface.parentType != null) {
      var parentType = resolveTypeName(
          interface.parentType, lib, scope, clazz.name, 'parent');

      if (parentType != 'dynamic' &&
          parentType != 'null' &&
          parentType != null) {
        clazz.parentTypeName = parentType;

        // Check if symbol exists
        var resolved = scope.resolve(parentType)?.value;

        if (resolved != null && resolved is DartClass) {
          clazz.fields.addAll(resolved.fields);
        } else if (resolved == null) {
          var list = _extends.putIfAbsent(parentType, () => []);
          list.add(clazz);
        }
      }
    }

    // Check for existing children
    // Note: This only works for one generation of inheritance.
    var children = _extends[clazz.name];
    children?.forEach((c) {
      c.fields.addAll(clazz.fields);
    });
    children?.clear();
  }

  String resolveTypeName(TypeContext ctx, DartLibrary lib, SymbolTable scope,
      String className, String memberName) {
    if (ctx is ArrayTypeContext) {
      var inner = resolveTypeName(
          ctx.getType(), lib, scope, className, singularize(memberName));
      return 'List<$inner>';
    } else if (ctx is SimpleTypeContext) {
      var symbol = scope.resolve(ctx.getID().text)?.value;

      if (symbol == null) {
        // Just trust the type annotation here, may be a forward reference.
        var typeAnnotation = ctx.getID().text;
        return typeAnnotation == 'any' ? 'dynamic' : typeAnnotation;
      } else if (symbol is DartClass)
        return symbol.name;
      else if (symbol is String)
        return symbol;
      else if (symbol is _UnionType) {
        return symbol.consolidated;
      } else if (symbol is _DependencyImport) return symbol.inject(lib);
    } else if (ctx is ObjectTypeContext) {
      var classRc = new ReCase(className);
      var memberRc = new ReCase(memberName);
      var newClassName = classRc.pascalCase + memberRc.pascalCase;

      var type = _objectTypes.putIfAbsent(newClassName, () {
        // If there are any fields that look like:
        //
        // [key: string]: boolean | number | string;
        //
        // Then we should alias the entire type as Map<T, U>.
        if (ctx.getArrayKeyInterfaceFields().isNotEmpty) {
          var arrayField = ctx.getArrayKeyInterfaceFields().first;
          var keyType =
              resolveTypeName(arrayField.keyType, lib, scope, newClassName, 'key');
          var valueType =
              resolveTypeName(arrayField.valueType, lib, scope, newClassName, 'value');
          var mapTypeName = 'Map<$keyType, $valueType>';
          scope.add(newClassName, value: mapTypeName, constant: true);
          print('Aliased anonymous object type $newClassName as $mapTypeName');
          return mapTypeName;
        }

        var clazz = new DartClass(newClassName, lib);
        lib.classes.add(clazz);
        scope.add(newClassName, value: clazz, constant: true);

        // Add fields
        for (var pair in ctx.getKeyTypePairs()) {
          var name = pair.getID().text;
          var typeName =
              resolveTypeName(pair.getType(), lib, scope, newClassName, name);
          var field = new DartField(name, typeName);

          if (pair.getComments().isNotEmpty)
            field.comment =
                pair.getComments().map<String>((c) => c.text).join('\n');

          clazz.fields.add(field);
        }

        return clazz;
      });

      return type is DartClass ? type.name : type.toString();
    } else if (ctx is UnionTypeContext) {
      return _consolidateUnion(
          ctx.getType(0), ctx.getType(1), lib, scope, className, memberName);
    } else if (ctx is ExprTypeContext) {
      return inferTypeName(ctx.getExpr(), lib, scope);
    } else if (ctx is GenericTypeContext) {
      // Ignore type params
      return resolveTypeName(ctx.target, lib, scope, className, memberName);
    }

    return 'dynamic';
  }

  /// *Attempt* to find a reasonable type for this union.
  String _consolidateUnion(TypeContext left, TypeContext right, DartLibrary lib,
      SymbolTable scope, String className, String memberName) {
    var l = resolveTypeName(left, lib, scope, className, memberName);
    var r = resolveTypeName(right, lib, scope, className, memberName);
    return _consolidateUnionStrings(l, r, lib, scope, className, memberName);
  }

  String _consolidateUnionStrings(String l, String r, DartLibrary lib,
      SymbolTable scope, String className, String memberName) {
    // Resolve x | null into 'x'
    if (l == 'null' && r != 'null')
      return r;
    else if (l != 'null' && r == 'null')
      return l;
    else if (l == 'null' && r == 'null')
      return 'dynamic';
    else if (l == r)
      return l;
    // Prefer specific type over dynamic
    else if (l == 'dynamic' && r != 'dynamic')
      return r;
    else if (l != 'dynamic' && r == 'dynamic')
      return l;
    else {
      //('Consolidate $l with $r from $className');
      // Otherwise, you have two legitimate types.
      // Dart currently doesn't support this, so we have to return 'dynamic'.
      return 'dynamic';
    }
  }

  String inferTypeName(ExprContext expr, DartLibrary lib, SymbolTable scope) {
    if (expr is ArrayExprContext)
      return 'List';
    else if (expr is BoolExprContext)
      return 'bool';
    else if (expr is StringExprContext)
      return 'String';
    else if (expr is NumExprContext)
      return 'num';
    else if (expr is ParenthesizedExprContext)
      return inferTypeName(expr.getExpr(), lib, scope);
    else
      return 'dynamic';
  }
}

class _DependencyImport {
  final String typeName, source;

  _DependencyImport(this.typeName, this.source);

  String inject(DartLibrary lib) {
    if (!lib.imports.contains(source)) lib.imports.add(source);
    return typeName;
  }
}

class _UnionType {
  final String consolidated;

  _UnionType(this.consolidated);
}
