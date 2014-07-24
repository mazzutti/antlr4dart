library ref_to_rule;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/ref_to_rule.dart';

main() {
  test("testRefToRuleDoesNotSetTokenNorEmitAnother", () {
    var source = new StringSource("34 -21 3");
    var lexer = new RefToRule(source);
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
      "[@0,0:1='34',<2>,1:0]",
      "[@1,3:5='-21',<1>,1:3]",
      "[@2,7:7='3',<2>,1:7]",
      "[@3,8:7='<EOF>',<-1>,1:8]"];
    expect(tokens, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
