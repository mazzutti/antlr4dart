library optional;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/optional_parser.dart";
part "../grammars/optional_lexer.dart";

main() {
  test("testOptional1", () {
    var csource = new StringSource("x");
    var lexer = new OptionalLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new OptionalParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.stat();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testOptional2", () {
    var csource = new StringSource("if x else x");
    var lexer = new OptionalLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new OptionalParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.stat();
    var expected = [
      "reportAttemptingFullContext d=1 (ifstat), input='else'",
      "reportContextSensitivity d=1 (ifstat), input='elsex'"
    ];
    expect(errorListener.errorMessages, equals(expected));
  });

  test("testOptional3", () {
    var csource = new StringSource("if x");
    var lexer = new OptionalLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new OptionalParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.stat();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testOptional4", () {
    var csource = new StringSource("if if x else x");
    var lexer = new OptionalLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new OptionalParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.stat();
    var expected = ["reportAttemptingFullContext d=1 (ifstat), input='else'"];
    expect(errorListener.errorMessages, equals(expected));
  });
}
