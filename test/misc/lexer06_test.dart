library lexer06;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer06.dart";

main() {

  test('testValid06', () {
    var source = new StringSource("fofaaooa");
    var lexer = new Lexer06(source);

    var token = lexer.nextToken();
    expect(token.type, equals(Lexer06.FOO));
    expect((token as CommonToken).startIndex, equals(0));
    expect((token as CommonToken).stopIndex, equals(1));
    expect(token.text, equals("fo"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer06.FOO));
    expect((token as CommonToken).startIndex, equals(2));
    expect((token as CommonToken).stopIndex, equals(7));
    expect(token.text, equals("faaooa"));

    token = lexer.nextToken();
    expect(token.type, equals(Token.EOF));
  });

  test('testMalformedInput06', () {
    var source = new StringSource("fofoaooaoa2");
    var lexer = new Lexer06(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    lexer.nextToken();
    lexer.nextToken();
    var token = lexer.nextToken();
    var expected = "token recognition error at: '2'";
    expect(errorListener.errorMessages.last, equals(expected));
  });
}
