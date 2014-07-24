library common_token_source_tests;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

main() {
  test("testOffChannel", () {
    var tokens = [
      new CommonToken.ofType(1," "),
      new CommonToken.ofType(1,"x"),
      new CommonToken.ofType(1," "),
      new CommonToken.ofType(1,"="),
      new CommonToken.ofType(1,"34"),
      new CommonToken.ofType(1," "),
      new CommonToken.ofType(1," "),
      new CommonToken.ofType(1,";"),
      new CommonToken.ofType(1,"\n"),
      new CommonToken.ofType(Token.EOF, "")
    ];
    tokens[0].channel = Token.HIDDEN_CHANNEL;
    tokens[2].channel = Token.HIDDEN_CHANNEL;
    tokens[5].channel = Token.HIDDEN_CHANNEL;
    tokens[6].channel = Token.HIDDEN_CHANNEL;
    tokens[8].channel = Token.HIDDEN_CHANNEL;

    var lexer = new TokenProviderTest1(tokens) ; // simulate input " x =34  ;\n"
    var source = new CommonTokenSource(lexer);
    expect(source.lookToken(1).text, equals("x")); // must skip first off channel token
    source.consume();
    expect(source.lookToken(1).text, equals("="));
    expect(source.lookToken(-1).text, equals("x"));
    source.consume();
    expect(source.lookToken(1).text, equals("34"));
    expect(source.lookToken(-1).text, equals("="));
    source.consume();
    expect(source.lookToken(1).text, equals(";"));
    expect(source.lookToken(-1).text, equals("34"));
    source.consume();
    expect(source.lookAhead(1), equals(Token.EOF));
    expect(source.lookToken(-1).text, equals(";"));
    expect(source.lookToken(-2).text, equals("34"));
    expect(source.lookToken(-3).text, equals("="));
    expect(source.lookToken(-4).text, equals("x"));
  });

  test("testFetchOffChannel", () {
    var tokens = [
      new CommonToken.ofType(1," "),
      new CommonToken.ofType(1,"x"),
      new CommonToken.ofType(1," "),
      new CommonToken.ofType(1,"="),
      new CommonToken.ofType(1,"34"),
      new CommonToken.ofType(1," "),
      new CommonToken.ofType(1," "),
      new CommonToken.ofType(1,";"),
      new CommonToken.ofType(1," "),
      new CommonToken.ofType(1,"\n"),
      new CommonToken.ofType(Token.EOF, "")
    ];
    tokens[0].channel = Token.HIDDEN_CHANNEL;
    tokens[2].channel = Token.HIDDEN_CHANNEL;
    tokens[5].channel = Token.HIDDEN_CHANNEL;
    tokens[6].channel = Token.HIDDEN_CHANNEL;
    tokens[8].channel = Token.HIDDEN_CHANNEL;
    tokens[9].channel = Token.HIDDEN_CHANNEL;

    var lexer = new TokenProviderTest1(tokens); // simulate input " x =34  ; \n"
    var source = new CommonTokenSource(lexer);
    source.fill();
    expect(source.getHiddenTokensToLeft(0), isNull);
    expect(source.getHiddenTokensToRight(0), isNull);
    expect(source.getHiddenTokensToLeft(1).toString(),
        equals("[[@0,0:0=' ',<1>,channel=1,0:-1]]"));
    expect(source.getHiddenTokensToRight(1).toString(),
        equals("[[@2,0:0=' ',<1>,channel=1,0:-1]]"));
    expect(source.getHiddenTokensToLeft(2), isNull);
    expect(source.getHiddenTokensToRight(2), isNull);
    expect(source.getHiddenTokensToLeft(3).toString(),
        equals("[[@2,0:0=' ',<1>,channel=1,0:-1]]"));
    expect(source.getHiddenTokensToRight(3), isNull);
    expect(source.getHiddenTokensToLeft(4), isNull);
    expect(source.getHiddenTokensToRight(4).toString(),
        equals("[[@5,0:0=' ',<1>,channel=1,0:-1], [@6,0:0=' ',<1>,channel=1,0:-1]]"));
    expect(source.getHiddenTokensToLeft(5), isNull);
    expect(source.getHiddenTokensToRight(5).toString(),
        equals("[[@6,0:0=' ',<1>,channel=1,0:-1]]"));
    expect(source.getHiddenTokensToLeft(6).toString(),
        equals("[[@5,0:0=' ',<1>,channel=1,0:-1]]"));
    expect(source.getHiddenTokensToRight(6), isNull);
    expect(source.getHiddenTokensToLeft(7).toString(),
        equals("[[@5,0:0=' ',<1>,channel=1,0:-1], [@6,0:0=' ',<1>,channel=1,0:-1]]"));
    expect(source.getHiddenTokensToRight(7).toString(),
        equals("[[@8,0:0=' ',<1>,channel=1,0:-1], [@9,0:0='\\n',<1>,channel=1,0:-1]]"));
    expect(source.getHiddenTokensToLeft(8), isNull);
    expect(source.getHiddenTokensToRight(8).toString(),
        equals("[[@9,0:0='\\n',<1>,channel=1,0:-1]]"));
    expect(source.getHiddenTokensToLeft(9).toString(),
        equals("[[@8,0:0=' ',<1>,channel=1,0:-1]]"));
    expect(source.getHiddenTokensToRight(9), isNull);
  });

  test("testSingleEOF", () {
    var lexer = new TokenProviderTest2();
    var tokens = new CommonTokenSource(lexer);
    tokens.fill();
    expect(tokens.lookAhead(1), equals(Token.EOF));
    expect(tokens.index, equals(0));
    expect(tokens.length, equals(1));
  });

  test("testCannotConsumeEOF", ()  {
    var lexer = new TokenProviderTest2();
    var tokens = new CommonTokenSource(lexer);
    tokens.fill();
    expect(tokens.lookAhead(1), equals(Token.EOF));
    expect(tokens.index, equals(0));
    expect(tokens.length, equals(1));
    expect(() => tokens.consume(), throwsStateError);
  });
}

class TokenProviderTest1 extends TokenProvider {
  TokenFactory tokenFactory = null;
  int i = 0;
  List<WritableToken> tokens;
  TokenProviderTest1(this.tokens);
  Token nextToken() => tokens[i++];
  String get sourceName => "test";
  int get charPositionInLine => 0;
  int get line => 0;
  StringSource get inputSource => null;
}

class TokenProviderTest2 extends TokenProvider {
  TokenFactory tokenFactory = null;
  Token nextToken() => new CommonToken.ofType(Token.EOF);
  String get sourceName => "test";
  int get charPositionInLine => 0;
  int get line => 0;
  StringSource get inputSource => null;
}
