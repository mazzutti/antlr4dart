library char_set_range;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/char_set_range.dart';

main() {
  test("testCharSetRange", () {
    var source = new StringSource("34\r 34 a2 abc \n   ");
    var lexer = new CharSetRange(source);
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
      "[@1,4:5='34',<1>,1:4]",
      "[@2,7:8='a2',<2>,1:7]",
      "[@3,10:12='abc',<2>,1:10]",
      "[@4,18:17='<EOF>',<-1>,2:3]"];
    expect(tokens, equals(expected));
    expect(lexer.log, equals(["I", "I", "ID", "ID"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
