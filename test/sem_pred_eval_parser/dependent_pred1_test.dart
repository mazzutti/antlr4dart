library dependent_pred1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/dependent_pred1_parser.dart";
part "../grammars/dependent_pred1_lexer.dart";

main() {
  test("testDependentPredNotInOuterCtxShouldBeIgnored", () {
    var csource = new StringSource("a;");
    var lexer = new DependentPred1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DependentPred1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, ["alt 2"]);
  });
}
