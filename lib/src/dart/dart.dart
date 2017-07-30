import 'package:dart_style/dart_style.dart';
import 'package:indenting_buffer/indenting_buffer.dart';

final RegExp _list = new RegExp(r'List<([^>]+)>');

class DartLibrary {
  final List<String> imports = [];
  final List<DartClass> classes = [];

  void compile(IndentingBuffer buffer) {
    for (var im in imports) buffer.writeln("import '$im';");

    if (imports.isNotEmpty && classes.isNotEmpty) buffer.writeln();

    int i = 0;

    for (var clazz in classes) {
      if (i++ > 0) buffer.writeln();
      clazz.compile(buffer);
    }
  }

  String compilePretty() {
    var buf = new IndentingBuffer();
    compile(buf);
    return new DartFormatter().format(buf.toString());
  }
}

class DartClass {
  final bool asAbstract;
  final List<DartField> fields = [];
  final String name;
  final DartLibrary lib;
  String comment;

  DartClass(this.name, this.lib, {this.comment: '', this.asAbstract: false});

  void compile(IndentingBuffer buffer) {
    if (comment?.isNotEmpty == true) buffer.writeln(comment);

    if (asAbstract == true)
      buffer.write('abstract class ');
    else
      buffer.write('class ');

    buffer
      ..write('$name {')
      ..indent();

    int i = 0;
    for (var field in fields) {
      if (i++ > 0) buffer.writeln();
      field.compile(buffer);
    }

    if (i > 0) buffer.writeln();

    if (asAbstract != true) {
      compileConstructor(buffer);
      buffer.writeln();
      buffer.writeln();
      compileFromMap(buffer);
      buffer.writeln();
      compileToJson(buffer);
    }

    buffer.outdent().writeln('}');
  }

  void compileConstructor(IndentingBuffer buffer) {
    if (fields.isEmpty) return;

    buffer.write('$name ({');

    int i = 0;

    for (var field in fields) {
      if (i++ > 0) buffer.withoutIndent(', ');
      buffer.withoutIndent('this.${field.name}');
    }

    buffer.withoutIndent('});');
  }

  void compileFromMap(IndentingBuffer buffer) {
    buffer
      ..write('static $name parse(Map map) {')
      ..indent();
    buffer
      ..writeln('return new $name(')
      ..indent();

    int i = 0;
    for (var field in fields) {
      if (i++ > 0) buffer.withoutIndent(',\n');

      // Resolve type...
      var targetType = lib.classes
          .firstWhere((c) => c.name == field.typeName, orElse: () => null);

      if (targetType?.asAbstract == false) {
        buffer
            .write("${field.name}: map['${field.name}'] is! Map ? null : ${field
                .typeName}.parse(map['${field.name}'])");
      } else {
        var m = _list.firstMatch(field.typeName);

        if (m != null) {
          var innerTypeName = m[1];
          var targetType = lib.classes
              .firstWhere((c) => c.name == innerTypeName, orElse: () => null);
          if (targetType?.asAbstract == false) {
            buffer.write(
                "${field.name}: map['${field.name}'] is! Iterable ? null : map['${field.name}'].map<${innerTypeName}>($innerTypeName.parse).toList()");
            continue;
          }
        }

        buffer.write("${field.name}: map['${field.name}']");
      }
    }

    buffer
      ..writeln(');')
      ..outdent();
    buffer.outdent().writeln('}');
  }

  void compileToJson(IndentingBuffer buffer) {
    buffer
      ..write('Map<String, dynamic> toJson() {')
      ..indent();
    buffer
      ..writeln('return {')
      ..indent();

    int i = 0;
    for (var field in fields) {
      if (i++ > 0) buffer.withoutIndent(',\n');

      // Resolve type...
      var targetType = lib.classes
          .firstWhere((c) => c.name == field.typeName, orElse: () => null);

      if (targetType?.asAbstract == false) {
        buffer.write("'${field.name}': ${field.name}?.toJson()");
      } else {
        var m = _list.firstMatch(field.typeName);

        if (m != null) {
          var innerTypeName = m[1];
          var targetType = lib.classes
              .firstWhere((c) => c.name == innerTypeName, orElse: () => null);
          if (targetType?.asAbstract == false) {
            buffer.write(
                "'${field.name}': ${field.name}?.map((x) => x.toJson())");
            continue;
          }
        }

        buffer.write("'${field.name}': ${field.name}");
      }
    }

    buffer
      ..writeln('};')
      ..outdent();
    buffer.outdent().writeln('}');
  }
}

class DartField {
  final bool asStatic;
  final String name;
  final String typeName;
  DartClass type;
  String comment, rawValue;
  DartField(this.name, this.typeName,
      {this.comment: '', this.rawValue, this.asStatic: false});

  void compile(IndentingBuffer buffer) {
    if (comment?.isNotEmpty == true) buffer.writeln(comment);

    if (asStatic == true)
      buffer.write('static ');
    else
      buffer.write('');

    if (rawValue != null) buffer.withoutIndent('const ');
    buffer.withoutIndent('$typeName $name');

    if (rawValue != null) buffer.withoutIndent(' = $rawValue');
    buffer.withoutIndent(';\n');
  }
}
