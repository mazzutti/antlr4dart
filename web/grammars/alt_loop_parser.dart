// Generated from AltLoop.g by antlr4dart
part of alt_loop;

class AltLoopParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1;

  static const int T__2 = 1, T__1 = 2, T__0 = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x11\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x03\x07\x03\x0a\x0a\x03\x0c\x03\x0e\x03\x0d\x0b\x03\x03"
  	"\x03\x03\x03\x03\x03\x02\x02\x04\x02\x04\x02\x03\x03\x02\x03\x04\x0f"
  	"\x02\x06\x03\x02\x02\x02\x04\x0b\x03\x02\x02\x02\x06\x07\x05\x04\x03"
  	"\x02\x07\x03\x03\x02\x02\x02\x08\x0a\x09\x02\x02\x02\x09\x08\x03\x02"
  	"\x02\x02\x0a\x0d\x03\x02\x02\x02\x0b\x09\x03\x02\x02\x02\x0b\x0c\x03"
  	"\x02\x02\x02\x0c\x0e\x03\x02\x02\x02\x0d\x0b\x03\x02\x02\x02\x0e\x0f"
  	"\x07\x05\x02\x02\x0f\x05\x03\x02\x02\x02\x03\x0b";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'x'", "'y'", "'z'"
  ];

  final List<String> ruleNames = [
    "s", "a"
  ];

  List log = new List();

  AltLoopParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "AltLoop.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    buildParseTree = true;
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      localContext.r = a();
      log.add(localContext.r.toString(this));
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
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 9;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == T__2 || _la == T__1) {
        state = 6;
        _la = inputSource.lookAhead(1);
        if (!(_la == T__2 || _la == T__1)) {
          errorHandler.recoverInline(this);
        }
        consume();
        state = 11;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 12; 
      match(T__0);
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

  AContext r;

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => AltLoopParser.RULE_S;

  AContext getA() => getRuleContext((c) => c is AContext, 0);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => AltLoopParser.RULE_A;
}

