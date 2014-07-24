// Generated from Delegator6.g by antlr4dart
part of delegator6;

class Delegator6Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_X = 1, RULE_Y = 2;

  static const int B = 1, A = 2, C = 3, WS = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x12\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x04\x03"
  	"\x04\x03\x04\x03\x04\x02\x02\x05\x02\x04\x06\x02\x02\x0e\x02\x08\x03"
  	"\x02\x02\x02\x04\x0b\x03\x02\x02\x02\x06\x0e\x03\x02\x02\x02\x08\x09"
  	"\x05\x04\x03\x02\x09\x0a\x05\x06\x04\x02\x0a\x03\x03\x02\x02\x02\x0b"
  	"\x0c\x07\x04\x02\x02\x0c\x0d\x08\x03\x01\x02\x0d\x05\x03\x02\x02\x02"
  	"\x0e\x0f\x07\x04\x02\x02\x0f\x10\x08\x04\x01\x02\x10\x07\x03\x02\x02"
  	"\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'b'", "'a'", "'c'", "WS"
  ];

  final List<String> ruleNames = [
    "s", "x", "y"
  ];

  List log = new List();

  Delegator6Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Delegator6.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 6; 
      x();
      state = 7; 
      y();
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
      state = 9; 
      match(A);
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
  YContext y() {
    var localContext = new YContext(context, state);
    enterRule(localContext, 4, RULE_Y);
    try {
      enterOuterAlt(localContext, 1);
      state = 12; 
      match(A);
      log.add("T.y");
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

  int get ruleIndex => Delegator6Parser.RULE_S;

  XContext getX() => getRuleContext((c) => c is XContext, 0);

  YContext getY() => getRuleContext((c) => c is YContext, 0);
}

class XContext extends ParserRuleContext {

  XContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Delegator6Parser.RULE_X;

  TerminalNode getA() => getToken(Delegator6Parser.A, 0);
}

class YContext extends ParserRuleContext {

  YContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Delegator6Parser.RULE_Y;

  TerminalNode getA() => getToken(Delegator6Parser.A, 0);
}

