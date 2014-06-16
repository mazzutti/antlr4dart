library lexer09;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer09.dart";

main() {

  test('testValid09', () {
    var source = new StringSource("085");
    var lexer = new Lexer09(source);

    var token = lexer.nextToken();
    expect(token.type, equals(Lexer09.DIGIT));
    expect((token as CommonToken).startIndex, equals(0));
    expect((token as CommonToken).stopIndex, equals(0));
    expect(token.text, equals("0"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer09.DIGIT));
    expect((token as CommonToken).startIndex, equals(1));
    expect((token as CommonToken).stopIndex, equals(1));
    expect(token.text, equals("8"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer09.DIGIT));
    expect((token as CommonToken).startIndex, equals(2));
    expect((token as CommonToken).stopIndex, equals(2));
    expect(token.text, equals("5"));

    token = lexer.nextToken();
    expect(token.type, equals(Token.EOF));
  });

  test('testMalformedInput09', () {
    var source = new StringSource("2a");
    var lexer = new Lexer09(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    lexer.nextToken();
    var token = lexer.nextToken();
    var expected = "token recognition error at: 'a'";
    expect(errorListener.errorMessages.last, equals(expected));
  });
}
