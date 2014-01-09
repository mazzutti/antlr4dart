library lexer_mode;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/lexer_mode.dart';

main() {
  test("testLexerMode", () {
    var source = new StringSource("\"abc\" \"ab\"");
    var lexer = new LexerMode(source);
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
      "[@0,0:4='\"abc\"',<2>,1:0]",
      "[@1,6:9='\"ab\"',<2>,1:6]",
      "[@2,10:9='<EOF>',<-1>,1:10]"];
    expect(tokens, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
