// Generated from Nested.g by antlr4dart
part of nested;

class NestedParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_B = 0, RULE_A = 1, RULE_S = 2;

  static const int T4 = 1, T3 = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x11\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x03\x02\x03\x03\x03\x03\x03\x04\x03\x04\x05\x04\x0f"
  	"\x0a\x04\x03\x04\x02\x02\x05\x02\x04\x06\x02\x02\x0e\x02\x08\x03\x02"
  	"\x02\x02\x04\x0a\x03\x02\x02\x02\x06\x0e\x03\x02\x02\x02\x08\x09\x07"
  	"\x03\x02\x02\x09\x03\x03\x02\x02\x02\x0a\x0b\x07\x04\x02\x02\x0b\x05"
  	"\x03\x02\x02\x02\x0c\x0f\x05\x04\x03\x02\x0d\x0f\x05\x02\x02\x02\x0e"
  	"\x0c\x03\x02\x02\x02\x0e\x0d\x03\x02\x02\x02\x0f\x07\x03\x02\x02\x02"
  	"\x03\x0e";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "T4", "T3"
  ];

  final List<String> ruleNames = [
    "b", "a", "s"
  ];
  NestedParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Nested.g";
  BContext b() {
    var localContext = new BContext(context, state);
    enterRule(localContext, 0, RULE_B);
    try {
      enterOuterAlt(localContext, 1);
      state = 6; 
      match(T4);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 2, RULE_A);
    try {
      enterOuterAlt(localContext, 1);
      state = 8; 
      match(T3);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 4, RULE_S);
    try {
      state = 12;
      switch (inputSource.lookAhead(1)) {
        case T3: 
          enterOuterAlt(localContext, 1);
          state = 10; 
          a(); 
          break;
        case T4: 
          enterOuterAlt(localContext, 2);
          state = 11; 
          b(); 
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

class BContext extends ParserRuleContext {

  BContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => NestedParser.RULE_B;

  TerminalNode getT4() => getToken(NestedParser.T4, 0);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => NestedParser.RULE_A;

  TerminalNode getT3() => getToken(NestedParser.T3, 0);
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => NestedParser.RULE_S;

  BContext getB() => getRuleContext((c) => c is BContext, 0);

  AContext getA() => getRuleContext((c) => c is AContext, 0);
}

