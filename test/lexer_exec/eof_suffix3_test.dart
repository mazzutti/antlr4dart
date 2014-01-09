library eof_suffix3;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/eof_suffix3.dart';

main() {
  test("testEOFSuffixInFirstRule1", () {
    var source = new StringSource("");
    var lexer = new EOFSuffix3(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    int tokenIndex = -1;
    var tokens = new List<String>();
    var token = lexer.nextToken();
    token.tokenIndex = ++tokenIndex;
    tokens.add(token.toString());
    while (token.type != Token.EOF) {
      token = lexer.nextToken();
      token.tokenIndex = ++tokenIndex;
      tokens.add(token.toString());
    }
    expect(tokens, equals(["[@0,0:-1='<EOF>',<-1>,1:0]"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testEOFSuffixInFirstRule2", () {
    var source = new StringSource("a");
    var lexer = new EOFSuffix3(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    int tokenIndex = -1;
    var tokens = new List<String>();
    var token = lexer.nextToken();
    token.tokenIndex = ++tokenIndex;
    tokens.add(token.toString());
    while (token.type != Token.EOF) {
      token = lexer.nextToken();
      token.tokenIndex = ++tokenIndex;
      tokens.add(token.toString());
    }
    var expected = [
      "[@0,0:0='a',<1>,1:0]",
      "[@1,1:0='<EOF>',<-1>,1:1]"];
    expect(tokens, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
