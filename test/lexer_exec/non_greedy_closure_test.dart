library non_greedy_closure;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/non_greedy_closure.dart';

main() {
  test("testNonGreedyClosure", () {
    var source = new StringSource("//blah\n//blah\n");
    var lexer = new NonGreedyClosure(source);
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
      "[@0,0:6='//blah\\n',<1>,1:0]",
      "[@1,7:13='//blah\\n',<1>,2:0]",
      "[@2,14:13='<EOF>',<-1>,3:7]"];
    expect(tokens, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
