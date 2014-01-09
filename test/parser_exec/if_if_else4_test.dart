library if_if_else4;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/if_if_else4_parser.dart";
part "../grammars/if_if_else4_lexer.dart";

main() {
  test("testIfIfElseNonGreedyBinding2", () {
    var csource = new StringSource("if y if y x else x");
    var lexer = new IfIfElse4Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new IfIfElse4Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.start();
    var expected = [
      "reportAttemptingFullContext d=2 (ifStatement), input='else'",
      "reportAttemptingFullContext d=2 (ifStatement), input='else'",
      "reportContextSensitivity d=2 (ifStatement), input='else x'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["if y x", "if y if y x else x"]));
  });
}
