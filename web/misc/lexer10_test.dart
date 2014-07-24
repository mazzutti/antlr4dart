library lexer10;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer10.dart";

main() {

  test('testValid10', () {
    var source = new StringSource("foobar _Ab98 \n A12sdf");
    var lexer = new Lexer10(source);

    var token = lexer.nextToken();
    expect(token.type, equals(Lexer10.IDENTIFIER));
    expect((token as CommonToken).startIndex, equals(0));
    expect((token as CommonToken).stopIndex, equals(5));
    expect(token.text, equals("foobar"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer10.WS));
    expect((token as CommonToken).startIndex, equals(6));
    expect((token as CommonToken).stopIndex, equals(6));
    expect(token.text, equals(" "));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer10.IDENTIFIER));
    expect((token as CommonToken).startIndex, equals(7));
    expect((token as CommonToken).stopIndex, equals(11));
    expect(token.text, equals("_Ab98"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer10.WS));
    expect((token as CommonToken).startIndex, equals(12));
    expect((token as CommonToken).stopIndex, equals(14));
    expect(token.text, equals(" \n "));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer10.IDENTIFIER));
    expect((token as CommonToken).startIndex, equals(15));
    expect((token as CommonToken).stopIndex, equals(20));
    expect(token.text, equals("A12sdf"));

    token = lexer.nextToken();
    expect(token.type, equals(Token.EOF));
  });

  test('testMalformedInput10', () {
    var source = new StringSource("a-b");
    var lexer = new Lexer10(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    lexer.nextToken();
    var token = lexer.nextToken();
    var expected = "token recognition error at: '-'";
    expect(errorListener.errorMessages.last, equals(expected));
  });
}
