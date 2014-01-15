library java_expressions;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/java_expressions_parser.dart';
part '../grammars/java_expressions_lexer.dart';

main() {
  test("testJavaExpressions1", () {
    var csource = new StringSource("a|b&c");
    var lexer = new JavaExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new JavaExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e (e a) | (e (e b) & (e c))) <EOF>)"]));
  });

  test("testJavaExpressions2", () {
    var csource = new StringSource("(a|b)&c");
    var lexer = new JavaExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new JavaExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e (e ( (e (e a) | (e b)) )) & (e c)) <EOF>)"]));
  });

  test("testJavaExpressions3", () {
    var csource = new StringSource("a > b");
    var lexer = new JavaExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new JavaExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e (e a) > (e b)) <EOF>)"]));
  });

  test("testJavaExpressions4", () {
    var csource = new StringSource("a >> b");
    var lexer = new JavaExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new JavaExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e (e a) >> (e b)) <EOF>)"]));
  });

  test("testJavaExpressions5", () {
    var csource = new StringSource("(T)x");
    var lexer = new JavaExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new JavaExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e ( (type T) ) (e x)) <EOF>)"]));
  });

  test("testJavaExpressions6", () {
    var csource = new StringSource("new A().b");
    var lexer = new JavaExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new JavaExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e (e new (type A) ( )) . b) <EOF>)"]));
  });

  test("testJavaExpressions7", () {
    var csource = new StringSource("(T)t.f()");
    var lexer = new JavaExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new JavaExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e (e ( (type T) ) (e (e t) . f)) ( )) <EOF>)"]));
  });

  test("testJavaExpressions8", () {
    var csource = new StringSource("a.f(x)==T.c");
    var lexer = new JavaExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new JavaExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    var expected1 = ["(s (e (e (e (e a) . f) ( "
                     "(expressionList (e x)) )) == (e (e T) . c)) <EOF>)"];
    expect(parser.log, equals(expected1));
  });

  test("testJavaExpressions9", () {
    var csource = new StringSource("a.f().g(x,1)");
    var lexer = new JavaExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new JavaExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    var expected1 = ["(s (e (e (e (e (e a) . f) ( )) . g) "
                     "( (expressionList (e x) , (e 1)) )) <EOF>)"];
    expect(parser.log, equals(expected1));
  });

  test("testJavaExpressions10", () {
    var csource = new StringSource("new T[((n-1) * x) + 1]");
    var lexer = new JavaExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new JavaExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=2 (e), input='[((n-1)*x)+1]'"];
    expect(errorListener.errorMessages, equals(expected));
    var expected1 = ["(s (e new (type T) [ (e (e ( (e (e"
                     " ( (e (e n) - (e 1)) )) * (e x)) )) + (e 1)) ]) <EOF>)"];
    expect(parser.log, equals(expected1));
  });
}
