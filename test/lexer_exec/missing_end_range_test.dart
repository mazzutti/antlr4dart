library missing_end_range;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/missing_end_range.dart';

main() {
  test("testCharSetWithMissingEndRange", () {
    var source = new StringSource("00\r\n");
    var lexer = new MissingEndRange(source);
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
      "[@0,0:1='00',<1>,1:0]",
      "[@1,4:3='<EOF>',<-1>,2:0]"];
    expect(tokens, equals(expected));
    expect(lexer.log, equals(["I"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
