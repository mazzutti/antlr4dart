library prefix_op;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/prefix_op_parser.dart';
part '../grammars/prefix_op_lexer.dart';

main() {
  test("testPrefixOpWithActionAndLabel1", () {
    var csource = new StringSource("a");
    var lexer = new PrefixOpLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new PrefixOpParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["a"]));
  });

  test("testPrefixOpWithActionAndLabel2", () {
    var csource = new StringSource("a+b");
    var lexer = new PrefixOpLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new PrefixOpParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=1 (e), input='+'",
      "reportContextSensitivity d=1 (e), input='+b'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["(a+b)"]));
  });

  test("testPrefixOpWithActionAndLabel3", () {
    var csource = new StringSource("a=b+c");
    var lexer = new PrefixOpLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new PrefixOpParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=1 (e), input='+'",
      "reportContextSensitivity d=1 (e), input='+c'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["((a=b)+c)"]));
  });
}
