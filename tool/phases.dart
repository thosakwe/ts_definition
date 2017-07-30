import 'package:build_runner/build_runner.dart';
import 'package:ts_definition/builder.dart';

final PhaseGroup phaseGroup = new PhaseGroup.singleAction(
    const TypeScriptDefinitionTranspilerBuilder(),
    new InputSet('ts_definition', const ['example/*.ts']));
