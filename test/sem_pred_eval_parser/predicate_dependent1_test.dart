library predicate_dependent1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/predicate_dependent1_parser.dart";
part "../grammars/predicate_dependent1_lexer.dart";

main() {
  test("testPredicateDependentOnArg1", () {
    var csource = new StringSource("a b");
    var lexer = new PredicateDependent1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new PredicateDependent1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, ["alt 2", "alt 1"]);
  });
}
