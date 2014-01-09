library non_greedy_termination1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/non_greedy_termination1.dart';

main() {
  test("testNonGreedyTermination1", () {
    var source = new StringSource("\"hi\"\"mom\"");
    var lexer = new NonGreedyTermination1(source);
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
      "[@0,0:3='\"hi\"',<1>,1:0]",
      "[@1,4:8='\"mom\"',<1>,1:4]",
      "[@2,9:8='<EOF>',<-1>,1:9]"];
    expect(tokens, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}

