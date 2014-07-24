library non_greedy_termination2;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/non_greedy_termination2.dart';

main() {
  test("testNonGreedyTermination2", () {
    var source = new StringSource("\"\"\"mom\"");
    var lexer = new NonGreedyTermination2(source);
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
      "[@0,0:6='\"\"\"mom\"',<1>,1:0]",
      "[@1,7:6='<EOF>',<-1>,1:7]"];
    expect(tokens, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
