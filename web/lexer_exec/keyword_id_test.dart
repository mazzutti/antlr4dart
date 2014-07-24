library keyword_id;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/keyword_id.dart';

main() {
  test("testKeywordID", () {
    var source = new StringSource("end eend ending a");
    var lexer = new KeywordID(source);
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
      "[@0,0:2='end',<1>,1:0]",
      "[@1,3:3=' ',<3>,1:3]",
      "[@2,4:7='eend',<2>,1:4]",
      "[@3,8:8=' ',<3>,1:8]",
      "[@4,9:14='ending',<2>,1:9]",
      "[@5,15:15=' ',<3>,1:15]",
      "[@6,16:16='a',<2>,1:16]",
      "[@7,17:16='<EOF>',<-1>,1:17]"];
    expect(tokens, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
