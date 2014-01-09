library ternary_expr;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/ternary_expr_parser.dart';
part '../grammars/ternary_expr_lexer.dart';

main() {
  test("testTernaryExpr1", () {
    var csource = new StringSource("a");
    var lexer = new TernaryExprLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TernaryExprParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e a) <EOF>)"]));
  });

  test("testTernaryExpr2", () {
    var csource = new StringSource("a+b");
    var lexer = new TernaryExprLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TernaryExprParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=1 (e), input='+'",
      "reportContextSensitivity d=1 (e), input='+'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (e (e a) + (e b)) <EOF>)"]));
  });

  test("testTernaryExpr3", () {
    var csource = new StringSource("a*b");
    var lexer = new TernaryExprLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TernaryExprParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=1 (e), input='*'",
      "reportContextSensitivity d=1 (e), input='*'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (e (e a) * (e b)) <EOF>)"]));
  });

  test("testTernaryExpr4", () {
    var csource = new StringSource("a?b:c");
    var lexer = new TernaryExprLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TernaryExprParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=1 (e), input='?'",
      "reportContextSensitivity d=1 (e), input='?'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (e (e a) ? (e b) : (e c)) <EOF>)"]));
  });

  test("testTernaryExpr5", () {
    var csource = new StringSource("a=b=c");
    var lexer = new TernaryExprLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TernaryExprParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=1 (e), input='='",
      "reportContextSensitivity d=1 (e), input='='",
      "reportAttemptingFullContext d=1 (e), input='='",
      "reportContextSensitivity d=1 (e), input='='"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (e (e (e a) = (e b)) = (e c)) <EOF>)"]));
  });

  test("testTernaryExpr6", () {
    var csource = new StringSource("a?b+c:d");
    var lexer = new TernaryExprLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TernaryExprParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=1 (e), input='?'",
      "reportContextSensitivity d=1 (e), input='?'",
      "reportAttemptingFullContext d=1 (e), input='+'",
      "reportContextSensitivity d=1 (e), input='+'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (e (e a) ? (e (e b) + (e c)) : (e d)) <EOF>)"]));
  });

  test("testTernaryExpr7", () {
    var csource = new StringSource("a?b=c:d");
    var lexer = new TernaryExprLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TernaryExprParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=1 (e), input='?'",
      "reportContextSensitivity d=1 (e), input='?'",
      "reportAttemptingFullContext d=1 (e), input='='",
      "reportContextSensitivity d=1 (e), input='='"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (e (e a) ? (e (e b) = (e c)) : (e d)) <EOF>)"]));
  });

  test("testTernaryExpr8", () {
    var csource = new StringSource("a? b?c:d : e");
    var lexer = new TernaryExprLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TernaryExprParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=1 (e), input='?'",
      "reportContextSensitivity d=1 (e), input='?'",
      "reportAttemptingFullContext d=1 (e), input='?'",
      "reportContextSensitivity d=1 (e), input='?'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (e (e a) ? (e (e b) ? (e c) : (e d)) : (e e)) <EOF>)"]));
  });

  test("testTernaryExpr9", () {
    var csource = new StringSource("a?b: c?d:e");
    var lexer = new TernaryExprLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TernaryExprParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=1 (e), input='?'",
      "reportContextSensitivity d=1 (e), input='?'",
      "reportAttemptingFullContext d=1 (e), input='?'",
      "reportContextSensitivity d=1 (e), input='?'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (e (e (e a) ? (e b) : (e c)) ? (e d) : (e e)) <EOF>)"]));
                                
  });
}
