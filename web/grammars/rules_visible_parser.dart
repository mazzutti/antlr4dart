// Generated from RulesVisible.g by antlr4dart
part of rules_visible;

class RulesVisibleParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0, RULE_X = 1;

  static const int M = 1, T = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x0c\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x02\x02\x04\x02\x04\x02\x02"
  	"\x09\x02\x06\x03\x02\x02\x02\x04\x09\x03\x02\x02\x02\x06\x07\x07\x03"
  	"\x02\x02\x07\x08\x05\x04\x03\x02\x08\x03\x03\x02\x02\x02\x09\x0a\x07"
  	"\x04\x02\x02\x0a\x05\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "M", "T"
  ];

  final List<String> ruleNames = [
    "a", "x"
  ];
  RulesVisibleParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "RulesVisible.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      match(M);
      state = 5; 
      x();
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  XContext x() {
    var localContext = new XContext(context, state);
    enterRule(localContext, 2, RULE_X);
    try {
      enterOuterAlt(localContext, 1);
      state = 7; 
      match(T);
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

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => RulesVisibleParser.RULE_A;

  XContext getX() => getRuleContext((c) => c is XContext, 0);

  TerminalNode getM() => getToken(RulesVisibleParser.M, 0);
}

class XContext extends ParserRuleContext {

  XContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => RulesVisibleParser.RULE_X;

  TerminalNode getT() => getToken(RulesVisibleParser.T, 0);
}

