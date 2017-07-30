import 'package:antlr4dart/antlr4dart.dart';
import 'package:inflection/inflection.dart';
import 'package:recase/recase.dart';
import 'package:symbol_table/symbol_table.dart';
import '../dart/dart.dart';
import '../grammar/grammar.dart';

class TsInterfaceToDartTranspiler {
  final Map<String, DartClass> _objectTypes = {};

  String generate(String source) {
    var input = new StringSource(source);
    var lexer = new TsInterfaceLexer(input);
    var tokens = new CommonTokenSource(lexer);
    var parser = new TsInterfaceParser(tokens);
    var library = compileDartLibrary(parser.compilationUnit());
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

    // Create entries for each interface and namespace
    for (var interface in compilationUnit.getInterfaceDecls()) {
      var name = interface.getID().text;
      var clazz = new DartClass(name, lib);
      lib.classes.add(clazz);
      scope.add(name, value: clazz, constant: true);
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
      var clazz = lib.classes.firstWhere((c) => c.name == name);
      populateInterface(interface, clazz, lib, scope);
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

      var field = new DartField(name, typeName);
      clazz.fields.add(field);
    }
  }

  String resolveTypeName(TypeContext ctx, DartLibrary lib, SymbolTable scope,
      String className, String memberName) {
    if (ctx is ArrayTypeContext) {
      var inner = resolveTypeName(
          ctx.getType(), lib, scope, className, singularize(memberName));
      return 'List<$inner>';
    } else if (ctx is SimpleTypeContext) {
      var symbol = scope.resolve(ctx.getID().text)?.value;

      if (symbol == null)
        return 'dynamic';
      else if (symbol is DartClass)
        return symbol.name;
      else if (symbol is String)
        return symbol;
      else if (symbol is _DependencyImport) return symbol.inject(lib);
    } else if (ctx is ObjectTypeContext) {
      var classRc = new ReCase(className);
      var memberRc = new ReCase(memberName);
      var newClassName = classRc.pascalCase + memberRc.pascalCase;

      var type = _objectTypes.putIfAbsent(newClassName, () {
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

      return type.name;
    }

    return 'dynamic';
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
