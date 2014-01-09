library reversed_range;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/reversed_range.dart';

main() {
  test("testCharSetWithReversedRange", () {
    var source = new StringSource("9");
    var lexer = new ReversedRange(source);
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
      "[@0,0:0='9',<1>,1:0]",
      "[@1,1:0='<EOF>',<-1>,1:1]"];
    expect(tokens, equals(expected));
    expect(lexer.log, equals(["A"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
