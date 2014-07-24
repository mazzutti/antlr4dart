// Generated from Delegator2.g by antlr4dart
part of delegator2;

class Delegator2Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1;

  static const int B = 1, WS = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x0d\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x02\x02\x04\x02\x04"
  	"\x02\x02\x0a\x02\x06\x03\x02\x02\x02\x04\x09\x03\x02\x02\x02\x06\x07"
  	"\x05\x04\x03\x02\x07\x08\x08\x02\x01\x02\x08\x03\x03\x02\x02\x02\x09"
  	"\x0a\x07\x03\x02\x02\x0a\x0b\x08\x03\x01\x02\x0b\x05\x03\x02\x02\x02"
  	"\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'b'", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a"
  ];

  List log = new List();

  Delegator2Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Delegator2.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      localContext.label = a(3);
      log.add(localContext.label.y);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  AContext a(int x) {
    var localContext = new AContext.args(context, state, x);
    enterRule(localContext, 2, RULE_A);
    try {
      enterOuterAlt(localContext, 1);
      state = 7; 
      match(B);
      log.add("S.a"); localContext.y = 1000;
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

  AContext label;

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Delegator2Parser.RULE_S;

  AContext getA() => getRuleContext((c) => c is AContext, 0);
}

class AContext extends ParserRuleContext {

  int x;
  int y;

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  AContext.args(ParserRuleContext parent, int invokingState, this.x) : super(parent, invokingState);

  int get ruleIndex => Delegator2Parser.RULE_A;

  TerminalNode getB() => getToken(Delegator2Parser.B, 0);
}

