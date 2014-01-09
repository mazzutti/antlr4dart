library return_value_and_actions1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/return_value_and_actions1_parser.dart';
part '../grammars/return_value_and_actions1_lexer.dart';

main() {
  test("testReturnValueAndActions1", () {
    var csource = new StringSource("4");
    var lexer = new ReturnValueAndActions1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ReturnValueAndActions1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals([4]));
  });

  test("testReturnValueAndActions2", () {
    var csource = new StringSource("1+2");
    var lexer = new ReturnValueAndActions1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ReturnValueAndActions1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=2 (e), input='+'",
      "reportContextSensitivity d=2 (e), input='+2'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals([3]));
  });

  test("testReturnValueAndActions3", () {
    var csource = new StringSource("1+2*3");
    var lexer = new ReturnValueAndActions1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ReturnValueAndActions1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=2 (e), input='+'",
      "reportContextSensitivity d=2 (e), input='+2'",
      "reportAttemptingFullContext d=2 (e), input='*'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals([7]));
  });

  test("testReturnValueAndActions4", () {
    var csource = new StringSource("(1+2)*3");
    var lexer = new ReturnValueAndActions1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ReturnValueAndActions1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=2 (e), input='+'",
      "reportContextSensitivity d=2 (e), input='+'",
      "reportAttemptingFullContext d=2 (e), input='*'",
      "reportContextSensitivity d=2 (e), input='*3'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals([9]));
  });
}
