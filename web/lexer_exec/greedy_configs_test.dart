library greedy_configs;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/greedy_configs.dart';

main() {
  test("testGreedyClosure", () {
    var source = new StringSource("ab");
    var lexer = new GreedyConfigs(source);
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
      "[@0,0:1='ab',<1>,1:0]",
      "[@1,2:1='<EOF>',<-1>,1:2]"];
    expect(tokens, equals(expected));
    expect(lexer.log, equals(["ab"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
