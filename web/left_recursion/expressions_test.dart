library expressions;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/expressions_parser.dart';
part '../grammars/expressions_lexer.dart';

main() {
  test("testExpressions1", () {
    var csource = new StringSource("a");
    var lexer = new ExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e a) <EOF>)"]));
  });

  test("testExpressions2", () {
    var csource = new StringSource("1");
    var lexer = new ExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e 1) <EOF>)"]));
  });

  test("testExpressions3", () {
    var csource = new StringSource("a-1");
    var lexer = new ExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e (e a) - (e 1)) <EOF>)"]));
  });

  test("testExpressions4", () {
    var csource = new StringSource("a.b");
    var lexer = new ExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e (e a) . b) <EOF>)"]));
  });

  test("testExpressions5", () {
    var csource = new StringSource("a.this");
    var lexer = new ExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e (e a) . this) <EOF>)"]));
  });

  test("testExpressions6", () {
    var csource = new StringSource("-a");
    var lexer = new ExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e - (e a)) <EOF>)"]));
  });

  test("testExpressions7", () {
    var csource = new StringSource("-a+b");
    var lexer = new ExpressionsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ExpressionsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e (e - (e a)) + (e b)) <EOF>)"]));
  });
}
