library lexer04;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer04.dart";

main() {

  test('testValid04', () {
    var source = new StringSource("ffofoofooo");
    var lexer = new Lexer04(source);

    var token = lexer.nextToken();
    expect(token.type, equals(Lexer04.FOO));
    expect((token as CommonToken).startIndex,equals(0));
    expect((token as CommonToken).stopIndex, equals(0));
    expect(token.text,equals("f"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer04.FOO));
    expect((token as CommonToken).startIndex, equals(1));
    expect((token as CommonToken).stopIndex, equals(2));
    expect(token.text, equals("fo"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer04.FOO));
    expect((token as CommonToken).startIndex, equals(3));
    expect((token as CommonToken).stopIndex, equals(5));
    expect(token.text, equals("foo"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer04.FOO));
    expect((token as CommonToken).startIndex, equals(6));
    expect((token as CommonToken).stopIndex, equals(9));
    expect(token.text, equals("fooo"));

    token = lexer.nextToken();
    expect(token.type, equals(Recognizer.EOF));
  });

  test('testMalformedInput04', () {
    var source = new StringSource("2");
    var lexer = new Lexer04(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    var token = lexer.nextToken();
    var expected = "token recognition error at: '2'";
    expect(errorListener.errorMessages.last, equals(expected));
  });
}
