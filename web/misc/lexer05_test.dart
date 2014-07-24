library lexer05;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer05.dart";

main() {

  test('testValid05', () {
    var source = new StringSource("fofoofooo");
    var lexer = new Lexer05(source);

    var token = lexer.nextToken();
    expect(token.type, equals(Lexer05.FOO));
    expect((token as CommonToken).startIndex, equals(0));
    expect((token as CommonToken).stopIndex, equals(1));
    expect(token.text, equals("fo"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer05.FOO));
    expect((token as CommonToken).startIndex, equals(2));
    expect((token as CommonToken).stopIndex, equals(4));
    expect(token.text, equals("foo"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer05.FOO));
    expect((token as CommonToken).startIndex, equals(5));
    expect((token as CommonToken).stopIndex, equals(8));
    expect(token.text, equals("fooo"));

    token = lexer.nextToken();
    expect(token.type, equals(Token.EOF));
  });

  test('testMalformedInput05', () {
    var source = new StringSource("f");
    var lexer = new Lexer05(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    var token = lexer.nextToken();
    var expected = "token recognition error at: 'f'";
    expect(errorListener.errorMessages.last, equals(expected));
  });
}
