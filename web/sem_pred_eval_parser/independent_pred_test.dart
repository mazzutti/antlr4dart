library independent_pred;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/independent_pred_parser.dart";
part "../grammars/independent_pred_lexer.dart";

main() {
  test("testIndependentPredNotPassedOuterCtxToAvoidCastException", () {
    var csource = new StringSource("a;");
    var lexer = new IndependentPredLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new IndependentPredParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, ["alt 2"]);
  });
}
