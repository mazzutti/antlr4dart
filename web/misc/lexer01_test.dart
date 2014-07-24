library lexer01;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer01.dart";

main() {

  test('testValid01', () {
    var source = new StringSource("0");
    var lexer = new Lexer01(source);
    var token = lexer.nextToken();
    expect(token.type,equals(Lexer01.ZERO));
    token = lexer.nextToken();
    expect(token.type, equals(Token.EOF));
  });

  test('testMalformedInput01', () {
    var source = new StringSource("1");
    var lexer = new Lexer01(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    var token = lexer.nextToken();
    expect(token.type, equals(Token.EOF));
    var expected = ["token recognition error at: '1'"];
    expect(errorListener.errorMessages, equals(expected));
  });
}
