library no_true_preds;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/no_true_preds_parser.dart";
part "../grammars/no_true_preds_lexer.dart";

main() {
  test("testNoTruePredsThrowsNoViableAlt", () {
    var csource = new StringSource("y 3 x 4");
    var lexer = new NoTruePredsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new NoTruePredsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=0 (a), input='y3'",
      "no viable alternative at input 'y'",
      "reportAttemptingFullContext d=0 (a), input='y3'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log.isEmpty, isTrue);
  });
}
