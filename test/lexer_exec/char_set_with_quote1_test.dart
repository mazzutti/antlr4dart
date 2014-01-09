library char_set_with_quote1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/char_set_with_quote1.dart';

main() {
  test("testCharSetWithQuote1", () {
    var source = new StringSource("b\"a");
    var lexer = new CharSetWithQuote1(source);
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
      "[@0,0:2='b\"a',<1>,1:0]",
      "[@1,3:2='<EOF>',<-1>,1:3]"];
    expect(tokens, equals(expected));
    expect(lexer.log, equals(["A"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
