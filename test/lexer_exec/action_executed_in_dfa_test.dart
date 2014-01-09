library action_executed_in_dfa;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/action_executed_in_dfa.dart';

main() {
  test("testActionExecutedInDFA", () {
    var source = new StringSource("34 34");
    var lexer = new ActionExecutedInDFA(source);
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
      "[@1,3:4='34',<1>,1:3]",
      "[@2,5:4='<EOF>',<-1>,1:5]"];
    expect(tokens, equals(expected));
    expect(lexer.log, equals(["I", "I"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
