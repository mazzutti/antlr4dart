library if_if_else2;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/if_if_else2_parser.dart";
part "../grammars/if_if_else2_lexer.dart";

main() {
  test("testIfIfElseGreedyBinding2", () {
    var csource = new StringSource("if y if y x else x");
    var lexer = new IfIfElse2Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new IfIfElse2Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.start();
    var expected = ["reportAttemptingFullContext d=2 (ifStatement), input='else'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["if y x else x", "if y if y x else x"]));
  });
}
