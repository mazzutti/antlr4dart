// Generated from RuleLabel.g by antlr4dart
part of rule_label;

class RuleLabelParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0, RULE_B = 1;

  static const int A = 1, WS = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x0f\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x06\x03\x0b\x0a\x03\x0d\x03\x0e\x03\x0c\x03"
  	"\x03\x02\x02\x04\x02\x04\x02\x02\x0d\x02\x06\x03\x02\x02\x02\x04\x0a"
  	"\x03\x02\x02\x02\x06\x07\x05\x04\x03\x02\x07\x08\x08\x02\x01\x02\x08"
  	"\x03\x03\x02\x02\x02\x09\x0b\x07\x03\x02\x02\x0a\x09\x03\x02\x02\x02"
  	"\x0b\x0c\x03\x02\x02\x02\x0c\x0a\x03\x02\x02\x02\x0c\x0d\x03\x02\x02"
  	"\x02\x0d\x05\x03\x02\x02\x02\x03\x0c";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "A", "WS"
  ];

  final List<String> ruleNames = [
    "a", "b"
  ];
  RuleLabelParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "RuleLabel.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      localContext.t = b();
      localContext.bla =  [localContext.t != null ? localContext.t.start : null, localContext.t != null ? localContext.t.stop : null, localContext.t != null ? inputSource.getText(localContext.t.start,localContext.t.stop) : null];
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  BContext b() {
    var localContext = new BContext(context, state);
    enterRule(localContext, 2, RULE_B);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 8; 
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      do {
        state = 7; 
        match(A);
        state = 10; 
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      } while (_la == A);
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

class AContext extends ParserRuleContext {

  List bla;
  BContext t;

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => RuleLabelParser.RULE_A;

  BContext getB() => getRuleContext((c) => c is BContext, 0);
}

class BContext extends ParserRuleContext {

  BContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => RuleLabelParser.RULE_B;

  TerminalNode getA(int i) => getToken(RuleLabelParser.A, i);

  List<TerminalNode> getAs() => getTokens(RuleLabelParser.A);
}

