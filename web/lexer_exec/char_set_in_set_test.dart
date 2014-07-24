library char_set_in_set;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/char_set_in_set.dart';

main() {
  test("testCharSetInSet", () {
    var source = new StringSource("a x");
    var lexer = new CharSetInSet(source);
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
      "[@1,2:2='x',<1>,1:2]",
      "[@2,3:2='<EOF>',<-1>,1:3]"];
    expect(tokens, equals(expected));
    expect(lexer.log, equals(["I", "I"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
