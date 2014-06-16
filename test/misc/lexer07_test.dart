library lexer07;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer07.dart";

main() {

  test('testValid07', () {
    var source = new StringSource("fofababbooabb");
    var lexer = new Lexer07(source);

    var token = lexer.nextToken();
    expect(token.type, equals(Lexer07.FOO));
    expect((token as CommonToken).startIndex, equals(0));
    expect((token as CommonToken).stopIndex, equals(1));
    expect(token.text, equals("fo"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer07.FOO));
    expect((token as CommonToken).startIndex, equals(2));
    expect((token as CommonToken).stopIndex, equals(12));
    expect(token.text, equals("fababbooabb"));

    token = lexer.nextToken();
    expect(token.type, equals(Token.EOF));
  });

  test('testMalformedInput07', () {
    var source = new StringSource("foaboao");
    var lexer = new Lexer07(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    var token = lexer.nextToken();
    token = lexer.nextToken();
    var expected = "token recognition error at: 'o'";
    expect(errorListener.errorMessages.last, equals(expected));
  });
}
