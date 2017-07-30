import 'dart:async';
import 'package:build/build.dart';
import 'ts_definition.dart';

class TypeScriptDefinitionTranspilerBuilder implements Builder {
  const TypeScriptDefinitionTranspilerBuilder();

  @override
  Map<String, List<String>> get buildExtensions => {
        '.ts': ['.dart'],
      };

  @override
  Future build(BuildStep buildStep) async {
    var contents = await buildStep.readAsString(buildStep.inputId);
    var generated = new TsInterfaceToDartTranspiler().generate(contents);
    buildStep.writeAsString(
        buildStep.inputId.changeExtension('.dart'), generated);
  }
}
