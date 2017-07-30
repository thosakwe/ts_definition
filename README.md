# ts_definition
Parse TypeScript interfaces, and generate (de)serializable Dart classes.

Usage:

```bash
pub global activate ts_definition
ts_definition <filename>.d.ts | <filename>.dart
```

Or, use the `TypeScriptDefinitionTranspilerBuilder` found in
`package:ts_definition/builder.dart`.