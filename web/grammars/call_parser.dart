// Generated from CallParser.g by antlr4dart
part of parser_interpreter_test;

class CallParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_CALL = 0, RULE_T = 1;

  static const int C = 1, A = 2, B = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x0f\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x05\x03\x0d\x0a\x03\x03\x03"
  	"\x02\x02\x04\x02\x04\x02\x02\x0d\x02\x06\x03\x02\x02\x02\x04\x0c\x03"
  	"\x02\x02\x02\x06\x07\x05\x04\x03\x02\x07\x08\x07\x03\x02\x02\x08\x03"
  	"\x03\x02\x02\x02\x09\x0a\x07\x04\x02\x02\x0a\x0d\x08\x03\x01\x02\x0b"
  	"\x0d\x07\x05\x02\x02\x0c\x09\x03\x02\x02\x02\x0c\x0b\x03\x02\x02\x02"
  	"\x0d\x05\x03\x02\x02\x02\x03\x0c";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "C", "A", "B"
  ];

  final List<String> ruleNames = [
    "call", "t"
  ];
  CallParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "CallParser.g";
  CallContext call() {
    var localContext = new CallContext(context, state);
    enterRule(localContext, 0, RULE_CALL);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      t();
      state = 5; 
      match(C);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  TContext t() {
    var localContext = new TContext(context, state);
    enterRule(localContext, 2, RULE_T);
    try {
      state = 10;
      switch (inputSource.lookAhead(1)) {
        case A: 
          enterOuterAlt(localContext, 1);
          state = 7; 
          match(A);
          ; 
          break;
        case B: 
          enterOuterAlt(localContext, 2);
          state = 9; 
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

class CallContext extends ParserRuleContext {

  CallContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => CallParser.RULE_CALL;

  TerminalNode getC() => getToken(CallParser.C, 0);

  TContext getT() => getRuleContext((c) => c is TContext, 0);
}

class TContext extends ParserRuleContext {

  TContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => CallParser.RULE_T;

  TerminalNode getA() => getToken(CallParser.A, 0);

  TerminalNode getB() => getToken(CallParser.B, 0);
}

