library lexer08;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer08.dart";

main() {

  test('testValid08', () {
    var source = new StringSource("ffaf");
    var lexer = new Lexer08(source);

    var token = lexer.nextToken();
    expect(token.type, equals(Lexer08.FOO));
    expect((token as CommonToken).startIndex, equals(0));
    expect((token as CommonToken).stopIndex, equals(0));
    expect(token.text, equals("f"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer08.FOO));
    expect((token as CommonToken).startIndex, equals(1));
    expect((token as CommonToken).stopIndex, equals(2));
    expect(token.text, equals("fa"));

    token = lexer.nextToken();
    expect(token.type, equals(Lexer08.FOO));
    expect((token as CommonToken).startIndex, equals(3));
    expect((token as CommonToken).stopIndex, equals(3));
    expect(token.text, equals("f"));

    token = lexer.nextToken();
    expect(token.type, equals(Token.EOF));
  });

  test('testMalformedInput08', () {
    var source = new StringSource("fafb");
    var lexer = new Lexer08(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    lexer.nextToken();
    lexer.nextToken();
    var token = lexer.nextToken();
    var expected = "token recognition error at: 'b'";
    expect(errorListener.errorMessages.last, equals(expected));
  });
}
