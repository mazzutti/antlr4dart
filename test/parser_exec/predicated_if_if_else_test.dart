library predicated_if_if_else;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/predicated_if_if_else_parser.dart";
part "../grammars/predicated_if_if_else_lexer.dart";

main() {
  test("testPredicatedIfIfElse", () {
    var csource = new StringSource("if x if x a else b");
    var lexer = new PredicatedIfIfElseLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new PredicatedIfIfElseParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    var result = parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(result.toString(), equals("[]"));
  });
}
