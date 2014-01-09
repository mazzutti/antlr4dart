library declarations;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/declarations_parser.dart';
part '../grammars/declarations_lexer.dart';

main() {
  test("testDeclarations1", () {
    var csource = new StringSource("a");
    var lexer = new DeclarationsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DeclarationsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (declarator a) <EOF>)"]));
  });

  test("testDeclarations2", () {
    var csource = new StringSource("*a");
    var lexer = new DeclarationsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DeclarationsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (declarator * (declarator a)) <EOF>)"]));
  });

  test("testDeclarations3", () {
    var csource = new StringSource("**a");
    var lexer = new DeclarationsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DeclarationsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (declarator * (declarator * (declarator a))) <EOF>)"]));
  });

  test("testDeclarations4", () {
    var csource = new StringSource("a[3]");
    var lexer = new DeclarationsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DeclarationsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=2 (declarator), input='['",
      "reportContextSensitivity d=2 (declarator), input='['"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (declarator (declarator a) [ (e 3) ]) <EOF>)"]));
  });

  test("testDeclarations5", () {
    var csource = new StringSource("b[]");
    var lexer = new DeclarationsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DeclarationsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=2 (declarator), input='['",
      "reportContextSensitivity d=2 (declarator), input='['"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (declarator (declarator b) [ ]) <EOF>)"]));
  });

  test("testDeclarations6", () {
    var csource = new StringSource("(a)");
    var lexer = new DeclarationsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DeclarationsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (declarator ( (declarator a) )) <EOF>)"]));
  });

  test("testDeclarations7", () {
    var csource = new StringSource("a[]()");
    var lexer = new DeclarationsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DeclarationsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=2 (declarator), input='['",
      "reportContextSensitivity d=2 (declarator), input='['",
      "reportAttemptingFullContext d=2 (declarator), input='('",
      "reportContextSensitivity d=2 (declarator), input='('"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (declarator (declarator (declarator a) [ ]) ( )) <EOF>)"]));
  });

  test("testDeclarations8", () {
    var csource = new StringSource("a[][]");
    var lexer = new DeclarationsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DeclarationsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=2 (declarator), input='['",
      "reportContextSensitivity d=2 (declarator), input='['",
      "reportAttemptingFullContext d=2 (declarator), input='['",
      "reportContextSensitivity d=2 (declarator), input='['"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (declarator (declarator (declarator a) [ ]) [ ]) <EOF>)"]));
  });

  test("testDeclarations9", () {
    var csource = new StringSource("*a[]");
    var lexer = new DeclarationsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DeclarationsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["reportAttemptingFullContext d=2 (declarator), input='['"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (declarator * (declarator (declarator a) [ ])) <EOF>)"]));
  });

  test("testDeclarations10", () {
    var csource = new StringSource("(*a)[]");
    var lexer = new DeclarationsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DeclarationsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=2 (declarator), input='['",
      "reportContextSensitivity d=2 (declarator), input='['"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(s (declarator (declarator ( (declarator * (declarator a)) )) [ ]) <EOF>)"]));
  });
}
