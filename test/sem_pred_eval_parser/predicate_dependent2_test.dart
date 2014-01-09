library predicate_dependent2;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/predicate_dependent2_parser.dart";
part "../grammars/predicate_dependent2_lexer.dart";

main() {
  test("testPredicateDependentOnArg2", () {
    var csource = new StringSource("a b");
    var lexer = new PredicateDependent2Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new PredicateDependent2Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
