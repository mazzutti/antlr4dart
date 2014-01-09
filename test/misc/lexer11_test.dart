library lexer11;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer11.dart";

main() {

  test('testValid11', () {
    var source = new StringSource("foobar _Ab98_5 \n A12sdf");
    var lexer = new Lexer11(source);

    var token = lexer.nextToken();
    expect(token.type, equals(Lexer11.IDENTIFIER));
    expect((token as CommonToken).startIndex, equals(0));
    expect((token as CommonToken).stopIndex, equals(5));
    expect(token.text, equals("foobar"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer11.WS));
    expect((token as CommonToken).startIndex, equals(6));
    expect((token as CommonToken).stopIndex, equals(6));
    expect(token.text, equals(" "));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer11.IDENTIFIER));
    expect((token as CommonToken).startIndex, equals(7));
    expect((token as CommonToken).stopIndex, equals(13));
    expect(token.text, equals("_Ab98_5"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer11.WS));
    expect((token as CommonToken).startIndex, equals(14));
    expect((token as CommonToken).stopIndex, equals(16));
    expect(token.text, equals(" \n "));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer11.IDENTIFIER));
    expect((token as CommonToken).startIndex, equals(17));
    expect((token as CommonToken).stopIndex, equals(22));
    expect(token.text, equals("A12sdf"));

    token = lexer.nextToken();
    expect(token.type, equals(Recognizer.EOF));
  });

  test('testMalformedInput11', () {
    var source = new StringSource("a-b");
    var lexer = new Lexer11(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    lexer.nextToken();
    var token = lexer.nextToken();
    var expected = "token recognition error at: '-'";
    expect(errorListener.errorMessages.last, equals(expected));
  });
}
