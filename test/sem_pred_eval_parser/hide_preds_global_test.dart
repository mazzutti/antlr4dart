library hide_preds_global;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/hide_preds_global_parser.dart";
part "../grammars/hide_preds_global_lexer.dart";

main() {
  test("testActionsHidePredsInGlobalFOLLOW", () {
    var csource = new StringSource("a!");
    var lexer = new HidePredsGlobalLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new HidePredsGlobalParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, ["eval=true", "parse"]);
  });
}
