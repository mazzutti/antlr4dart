// Generated from Combined.g by antlr4dart
part of combined;

class CombinedParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_X = 1;

  static const int T__0 = 1, INT = 2, WS = 3, A = 4, B = 5, C = 6;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x08\x0e\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x02\x02\x04"
  	"\x02\x04\x02\x02\x0b\x02\x06\x03\x02\x02\x02\x04\x09\x03\x02\x02\x02"
  	"\x06\x07\x05\x04\x03\x02\x07\x08\x07\x04\x02\x02\x08\x03\x03\x02\x02"
  	"\x02\x09\x0a\x07\x03\x02\x02\x0a\x0b\x07\x04\x02\x02\x0b\x0c\x08\x03"
  	"\x01\x02\x0c\x05\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'x'", "INT", "WS", "A", "B", "C"
  ];

  final List<String> ruleNames = [
    "s", "x"
  ];

  List log = new List();

  CombinedParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Combined.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      x();
      state = 5; 
      match(INT);
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
      match(T__0);
      state = 8; 
      match(INT);
      log.add("S.x");
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

  int get ruleIndex => CombinedParser.RULE_S;

  XContext getX() => getRuleContext((c) => c is XContext, 0);

  TerminalNode getINT() => getToken(CombinedParser.INT, 0);
}

class XContext extends ParserRuleContext {

  XContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => CombinedParser.RULE_X;

  TerminalNode getINT() => getToken(CombinedParser.INT, 0);
}

