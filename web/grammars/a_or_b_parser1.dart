// Generated from AOrBParser1.g by antlr4dart
part of parser_interpreter_test;

class AOrBParser1 extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0;

  static const int A = 1, B = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x0a\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x05\x02\x08\x0a\x02\x03\x02\x02\x02\x03\x02\x02\x02\x09\x02\x07\x03"
  	"\x02\x02\x02\x04\x05\x07\x03\x02\x02\x05\x08\x08\x02\x01\x02\x06\x08"
  	"\x07\x04\x02\x02\x07\x04\x03\x02\x02\x02\x07\x06\x03\x02\x02\x02\x08"
  	"\x03\x03\x02\x02\x02\x03\x07";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "A", "B"
  ];

  final List<String> ruleNames = [
    "s"
  ];
  AOrBParser1(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "AOrBParser1.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      state = 5;
      switch (inputSource.lookAhead(1)) {
        case A: 
          enterOuterAlt(localContext, 1);
          state = 2; 
          match(A);
          ; 
          break;
        case B: 
          enterOuterAlt(localContext, 2);
          state = 4; 
          match(B); 
          break;
        default: throw new NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => AOrBParser1.RULE_S;

  TerminalNode getA() => getToken(AOrBParser1.A, 0);

  TerminalNode getB() => getToken(AOrBParser1.B, 0);
}

