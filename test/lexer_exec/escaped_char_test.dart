library escaped_char;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/escaped_char.dart';

main() {
  test("testCharSetWithEscapedChar", () {
    var source = new StringSource("- ] ");
    var lexer = new EscapedChar(source);
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
      "[@0,0:0='-',<1>,1:0]",
      "[@1,2:2=']',<1>,1:2]",
      "[@2,4:3='<EOF>',<-1>,1:4]"];
    expect(tokens, equals(expected));
    expect(lexer.log, equals(["DASHBRACK", "DASHBRACK"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
