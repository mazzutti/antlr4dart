library lexer02;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer02.dart";

main() {

  test('testValid02', () {
    var source = new StringSource("01");
    var lexer = new Lexer02(source);
    var token = lexer.nextToken();
    expect(token.type,equals(Lexer02.ZERO));
    token = lexer.nextToken();
    expect(token.type,equals(Lexer02.ONE));
    token = lexer.nextToken();
    expect(token.type,equals(Recognizer.EOF));
  });

  test('testMalformedInput02', () {
    var source = new StringSource("2");
    var lexer = new Lexer02(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    var token = lexer.nextToken();
    var expected = "token recognition error at: '2'";
    expect(errorListener.errorMessages.last, equals(expected));
  });
}
