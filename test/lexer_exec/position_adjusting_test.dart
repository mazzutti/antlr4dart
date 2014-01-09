library position_adjusting;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/position_adjusting.dart';

main() {
  test("testPositionAdjustingLexer", () {
    String input = "tokens\ntokens {\nnotLabel\nlabel1 =\nlabel2 +=\nnotLabel\n";
    var source = new StringSource(input);
    var lexer = new PositionAdjusting(source);
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
    final int TOKENS = 4;
    final int LABEL = 5;
    final int IDENTIFIER = 6;
    var expected = [
      "[@0,0:5='tokens',<6>,1:0]",
      "[@1,7:12='tokens',<4>,2:0]",
      "[@2,14:14='{',<3>,2:7]",
      "[@3,16:23='notLabel',<6>,3:0]",
      "[@4,25:30='label1',<5>,4:0]",
      "[@5,32:32='=',<1>,4:7]",
      "[@6,34:39='label2',<5>,5:0]",
      "[@7,41:42='+=',<2>,5:7]",
      "[@8,44:51='notLabel',<6>,6:0]",
      "[@9,53:52='<EOF>',<-1>,7:0]"];
    expect(tokens, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}

class _PositionAdjustingLexerAtnSimulator extends LexerAtnSimulator {

  _PositionAdjustingLexerAtnSimulator(Lexer recog,
                                      Atn atn,
                                      List<Dfa> decisionToDFA,
                                      PredictionContextCache sharedContextCache) : super(atn,
                                                                                         decisionToDFA,
                                                                                         sharedContextCache,
                                                                                         recog);

  void resetAcceptPosition(CharSource input, int index, int line, int charPositionInLine) {
    input.seek(index);
    this.line = line;
    this.charPositionInLine = charPositionInLine;
    consume(input);
  }
}
