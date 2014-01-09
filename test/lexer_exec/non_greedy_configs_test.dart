library non_greedy_configs;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/non_greedy_configs.dart';

main() {
  test("testNonGreedyConfigs", () {
    var source = new StringSource("ab");
    var lexer = new NonGreedyConfigs(source);
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
      "[@1,1:1='b',<3>,1:1]",
      "[@2,2:1='<EOF>',<-1>,1:2]"];
    expect(tokens, equals(expected));
    expect(lexer.log, equals(["a", "b"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
