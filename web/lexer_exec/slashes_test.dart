library slashes;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/slashes.dart';

main() {
  test("testSlashes", () {
    var source = new StringSource("\\ / \\/ /\\");
    var lexer = new Slashes(source);
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
      "[@0,0:0='\\',<1>,1:0]",
      "[@1,2:2='/',<2>,1:2]",
      "[@2,4:5='\\/',<3>,1:4]",
      "[@3,7:8='/\\',<4>,1:7]",
      "[@4,9:8='<EOF>',<-1>,1:9]"];
    expect(tokens, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
