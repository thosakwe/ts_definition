# ts_definition
Parse TypeScript interfaces, and generate (de)serializable Dart classes.
**Preserves comments from the original TypeScript sources**.

Use the `TypeScriptDefinitionTranspilerBuilder` found in
`package:ts_definition/builder.dart`.

I don't expect this library to be 100% perfect, but it was capable of
generating automatic, serializable Dart files for the entire
[Language Server Protocol]().
This should be a good bet for many projects.