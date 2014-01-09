library recursive2;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/recursive2.dart';

main() {
  test("testRecursiveLexerRuleRefWithWildcardPlus1", () {
    var source = new StringSource("/* ick */\n/* /* */\n/* /*nested*/ */\n");
    var lexer = new Recursive2(source);
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
      "[@0,0:8='/* ick */',<1>,1:0]",
      "[@1,9:9='\\n',<2>,1:9]",
      "[@2,10:34='/* /* */\\n/* /*nested*/ */',<1>,2:0]",
      "[@3,35:35='\\n',<2>,3:16]",
      "[@4,36:35='<EOF>',<-1>,4:17]"];
    expect(tokens, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testRecursiveLexerRuleRefWithWildcardPlus2", () {
    var source = new StringSource("/* ick */x\n/* /* */x\n/* /*nested*/ */x\n");
    var lexer = new Recursive2(source);
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
      "token recognition error at: 'x'",
      "token recognition error at: 'x'"
    ];
    expect(errorListener.errorMessages, equals(expected));
  });
}
