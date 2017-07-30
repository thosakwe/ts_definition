import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:ts_definition/ts_definition.dart';

main(List<String> args) async {
  if (args.isEmpty) {
    stderr.writeln('fatal error: no input file');
    exitCode = 1;
  } else {
    Stream<String> input;

    if (args[0] == '-')
      input = stdin.transform(UTF8.decoder);
    else
      input = new File(args[0]).openRead().transform(UTF8.decoder);

    var generated = new TsInterfaceToDartTranspiler().generate(await input.join());
    stdout.write(generated);
  }
}
