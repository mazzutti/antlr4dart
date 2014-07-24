library basic_p_exec;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/basic_p_exec_parser.dart";
part "../grammars/basic_p_exec_lexer.dart";

main() {
  test("testBasicPExec", () {
    var csource = new StringSource("abc 34");
    var lexer = new BasicPExecLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new BasicPExecParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(parser.log, equals(["abc34"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
