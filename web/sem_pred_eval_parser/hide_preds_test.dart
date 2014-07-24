library hide_preds;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/hide_preds_parser.dart";
part "../grammars/hide_preds_lexer.dart";

main() {
  test("testActionHidesPreds", () {
    var csource = new StringSource("x x y");
    var lexer = new HidePredsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new HidePredsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=1 (a), input='x'",
      "reportAttemptingFullContext d=1 (a), input='x'",
      "reportAttemptingFullContext d=1 (a), input='y'",];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, ["alt 1", "alt 1", "alt 1"]);
  });
}
