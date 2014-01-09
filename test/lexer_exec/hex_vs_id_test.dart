library hex_vs_id;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/hex_vs_id.dart';

main() {
  test("testHexVsID", () {
    var source = new StringSource("x 0 1 a.b a.l");
    var lexer = new HexVsID(source);
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
      "[@0,0:0='x',<5>,1:0]",
      "[@1,1:1=' ',<6>,1:1]",
      "[@2,2:2='0',<2>,1:2]",
      "[@3,3:3=' ',<6>,1:3]",
      "[@4,4:4='1',<2>,1:4]",
      "[@5,5:5=' ',<6>,1:5]",
      "[@6,6:6='a',<5>,1:6]",
      "[@7,7:7='.',<4>,1:7]",
      "[@8,8:8='b',<5>,1:8]",
      "[@9,9:9=' ',<6>,1:9]",
      "[@10,10:10='a',<5>,1:10]",
      "[@11,11:11='.',<4>,1:11]",
      "[@12,12:12='l',<5>,1:12]",
      "[@13,13:12='<EOF>',<-1>,1:13]"];
    expect(tokens, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
