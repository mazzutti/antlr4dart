// Generated from Delegator8.g by antlr4dart
part of delegator8;

class Delegator8Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_B = 0, RULE_A = 1;

  static const int T__1 = 1, T__0 = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x0c\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x02\x02\x04\x02\x04\x02\x03"
  	"\x03\x02\x03\x04\x09\x02\x06\x03\x02\x02\x02\x04\x08\x03\x02\x02\x02"
  	"\x06\x07\x09\x02\x02\x02\x07\x03\x03\x02\x02\x02\x08\x09\x05\x02\x02"
  	"\x02\x09\x0a\x08\x03\x01\x02\x0a\x05\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'b'", "'c'", "WS"
  ];

  final List<String> ruleNames = [
    "b", "a"
  ];

  List log = new List();

  Delegator8Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Delegator8.g";
  BContext b() {
    var localContext = new BContext(context, state);
    enterRule(localContext, 0, RULE_B);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 4;
      _la = inputSource.lookAhead(1);
      if (!(_la == T__1 || _la == T__0)) {
        errorHandler.recoverInline(this);
      }
      consume();
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
      state = 6; 
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

  int get ruleIndex => Delegator8Parser.RULE_B;
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Delegator8Parser.RULE_A;

  BContext getB() => getRuleContext((c) => c is BContext, 0);
}

