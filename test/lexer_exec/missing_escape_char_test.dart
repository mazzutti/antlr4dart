library missing_escape_char;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/missing_escape_char.dart';

main() {
  test("testCharSetWithMissingEscapeChar", () {
    var source = new StringSource("34 ");
    var lexer = new MissingEscapeChar(source);
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
      "[@0,0:1='34',<1>,1:0]",
      "[@1,3:2='<EOF>',<-1>,1:3]"];
    expect(tokens, equals(expected));
    expect(lexer.log, equals(["I"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
