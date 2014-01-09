library more_command;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/more_command.dart';

main() {
  test("testMoreCommand", () {
    var source = new StringSource("34#10");
    var lexer = new MoreCommand(source);
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
      "[@0,0:1='34',<1>,1:0]",
      "[@1,2:4='#10',<1>,1:2]",
      "[@2,5:4='<EOF>',<-1>,1:5]"];
    expect(tokens, equals(expected));
    expect(lexer.log, equals(["I", "I"]));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
