// Generated from Delegator10.g by antlr4dart
part of delegator10;

class Delegator10Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_B = 0, RULE_A = 1;

  static const int T__1 = 1, T__0 = 2, WS = 3, A = 4, B = 5;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x07\x11\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x02\x03\x02\x05\x02\x0c\x0a\x02\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x02\x02\x04\x02\x04\x02\x02\x11\x02\x0b\x03\x02\x02"
  	"\x02\x04\x0d\x03\x02\x02\x02\x06\x0c\x07\x03\x02\x02\x07\x08\x07\x04"
  	"\x02\x02\x08\x0c\x08\x02\x01\x02\x09\x0c\x07\x07\x02\x02\x0a\x0c\x07"
  	"\x06\x02\x02\x0b\x06\x03\x02\x02\x02\x0b\x07\x03\x02\x02\x02\x0b\x09"
  	"\x03\x02\x02\x02\x0b\x0a\x03\x02\x02\x02\x0c\x03\x03\x02\x02\x02\x0d"
  	"\x0e\x05\x02\x02\x02\x0e\x0f\x08\x03\x01\x02\x0f\x05\x03\x02\x02\x02"
  	"\x03\x0b";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'b'", "'c'", "WS", "A", "B"
  ];

  final List<String> ruleNames = [
    "b", "a"
  ];

  List log = new List();

  Delegator10Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Delegator10.g";
  BContext b() {
    var localContext = new BContext(context, state);
    enterRule(localContext, 0, RULE_B);
    try {
      state = 9;
      switch (inputSource.lookAhead(1)) {
        case T__1: 
          enterOuterAlt(localContext, 1);
          state = 4; 
          match(T__1); 
          break;
        case T__0: 
          enterOuterAlt(localContext, 2);
          state = 5; 
          match(T__0);
          log.add("M.b"); 
          break;
        case B: 
          enterOuterAlt(localContext, 3);
          state = 7; 
          match(B); 
          break;
        case A: 
          enterOuterAlt(localContext, 4);
          state = 8; 
          match(A); 
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
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 2, RULE_A);
    try {
      enterOuterAlt(localContext, 1);
      state = 11; 
      b();
      log.add("S.a");
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

  int get ruleIndex => Delegator10Parser.RULE_B;

  TerminalNode getA() => getToken(Delegator10Parser.A, 0);

  TerminalNode getB() => getToken(Delegator10Parser.B, 0);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Delegator10Parser.RULE_A;

  BContext getB() => getRuleContext((c) => c is BContext, 0);
}

