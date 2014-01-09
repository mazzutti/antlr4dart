library parser1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/parser1_lexer.dart";
part "../grammars/parser1_parser.dart";

main() {

  test('testValid1Parser1', () {
    var source = new StringSource("foobar");
    var lexer = new Parser1Lexer(source);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Parser1Parser(tsource);
    parser.document();
    expect(0, equals(parser.reportedErrors.length));
    expect(1, equals(parser.identifiers.length));
  });

  test('testMalformedInput1Parser1', () {
    var source = new StringSource("");
    var lexer = new Parser1Lexer(source);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Parser1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.document();
    var expected = ["missing IDENTIFIER at '<EOF>'"];
    expect(errorListener.errorMessages, equals(expected));
  });
}
