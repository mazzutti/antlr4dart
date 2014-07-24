library char_set;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/char_set.dart';

main() {
  test("testCharSet", () {
    var source = new StringSource("34\r\n 34");
    var lexer = new CharSet(source);
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
      "[@1,5:6='34',<1>,2:1]",
      "[@2,7:6='<EOF>',<-1>,2:3]"];
    expect(tokens, equals(expected));
    expect(lexer.log, equals(["I", "I"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
