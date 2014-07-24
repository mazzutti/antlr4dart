library lexer03;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer03.dart";

main() {

  test('testValid_t003lexer', () {
    var source = new StringSource("0fooze1");
    var lexer = new Lexer03(source);
    var token = lexer.nextToken();
    expect(token.type, equals(Lexer03.ZERO));
    token = lexer.nextToken();
    expect(token.type, equals(Lexer03.FOOZE));
    token = lexer.nextToken();
    expect(token.type, equals(Lexer03.ONE));
    token = lexer.nextToken();
    expect(token.type, equals(Token.EOF));
  });

  test('testMalformedInput_t003lexer', () {
    var source = new StringSource("2");
    var lexer = new Lexer03(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    var token = lexer.nextToken();
    var expected = "token recognition error at: '2'";
    expect(errorListener.errorMessages.last, equals(expected));
  });
}
