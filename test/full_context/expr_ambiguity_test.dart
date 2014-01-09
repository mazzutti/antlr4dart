library expr_ambiguity;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/expr_ambiguity_parser.dart';
part '../grammars/expr_ambiguity_lexer.dart';

main() {
  test("testExprAmbiguity1", () {
    var csource = new StringSource("a+b");
    var lexer = new ExprAmbiguityLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ExprAmbiguityParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expectedMsgs = [
      "reportAttemptingFullContext d=1 (expr), input='+'",
      "reportContextSensitivity d=1 (expr), input='+b'"
    ];
    expect(errorListener.errorMessages, equals(expectedMsgs));
    var expected = ["(expr a + (expr b))"];
    expect(parser.log, equals(expected));
  });

  test("testExprAmbiguity2", () {
    var csource = new StringSource("a+b*c");
    var lexer = new ExprAmbiguityLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ExprAmbiguityParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expectedMsgs = [
      "reportAttemptingFullContext d=1 (expr), input='+'",
      "reportContextSensitivity d=1 (expr), input='+b'",
      "reportAttemptingFullContext d=1 (expr), input='*'",
      "reportAmbiguity d=1 (expr): ambigAlts={1, 2}, input='*c'"
    ];
    expect(errorListener.errorMessages, equals(expectedMsgs));
    var expected = ["(expr a + (expr b * (expr c)))"];
    expect(parser.log, equals(expected));
  });
}
