// Generated from SubrulePredict.g by antlr4dart
part of subrule_predict;

class SubrulePredictParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0, RULE_B = 1;

  static const int T__2 = 1, T__1 = 2, T__0 = 3, WS = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x1a\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x06\x02\x0a\x0a\x02\x0d\x02\x0e\x02\x0b\x03\x02\x03"
  	"\x02\x03\x03\x06\x03\x11\x0a\x03\x0d\x03\x0e\x03\x12\x03\x03\x06\x03"
  	"\x16\x0a\x03\x0d\x03\x0e\x03\x17\x03\x03\x02\x02\x04\x02\x04\x02\x02"
  	"\x1a\x02\x06\x03\x02\x02\x02\x04\x15\x03\x02\x02\x02\x06\x07\x07\x04"
  	"\x02\x02\x07\x09\x05\x04\x03\x02\x08\x0a\x07\x06\x02\x02\x09\x08\x03"
  	"\x02\x02\x02\x0a\x0b\x03\x02\x02\x02\x0b\x09\x03\x02\x02\x02\x0b\x0c"
  	"\x03\x02\x02\x02\x0c\x0d\x03\x02\x02\x02\x0d\x0e\x07\x05\x02\x02\x0e"
  	"\x03\x03\x02\x02\x02\x0f\x11\x07\x06\x02\x02\x10\x0f\x03\x02\x02\x02"
  	"\x11\x12\x03\x02\x02\x02\x12\x10\x03\x02\x02\x02\x12\x13\x03\x02\x02"
  	"\x02\x13\x14\x03\x02\x02\x02\x14\x16\x07\x03\x02\x02\x15\x10\x03\x02"
  	"\x02\x02\x16\x17\x03\x02\x02\x02\x17\x15\x03\x02\x02\x02\x17\x18\x03"
  	"\x02\x02\x02\x18\x05\x03\x02\x02\x02\x05\x0b\x12\x17";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'A'", "'BEGIN'", "'END'", "' '"
  ];

  final List<String> ruleNames = [
    "a", "b"
  ];
  SubrulePredictParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "SubrulePredict.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      match(T__1);
      state = 5; 
      b();
      state = 7; 
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      do {
        state = 6; 
        match(WS);
        state = 9; 
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      } while (_la == WS);
      state = 11; 
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
  BContext b() {
    var localContext = new BContext(context, state);
    enterRule(localContext, 2, RULE_B);
    int _la;
    try {
      var _alt;
      enterOuterAlt(localContext, 1);
      state = 19; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
        	  state = 14; 
        	  errorHandler.sync(this);
        	  _la = inputSource.lookAhead(1);
        	  do {
        	    state = 13; 
        	    match(WS);
        	    state = 16; 
        	    errorHandler.sync(this);
        	    _la = inputSource.lookAhead(1);
        	  } while (_la == WS);
        	  state = 18; 
        	  match(T__2);
        	  break;
      	default:
      	  throw new NoViableAltException(this);
        }
        state = 21; 
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 2, context);
      } while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER);
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

  int get ruleIndex => SubrulePredictParser.RULE_A;

  BContext getB() => getRuleContext((c) => c is BContext, 0);

  List<TerminalNode> getWSs() => getTokens(SubrulePredictParser.WS);

  TerminalNode getWS(int i) => getToken(SubrulePredictParser.WS, i);
}

class BContext extends ParserRuleContext {

  BContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SubrulePredictParser.RULE_B;

  List<TerminalNode> getWSs() => getTokens(SubrulePredictParser.WS);

  TerminalNode getWS(int i) => getToken(SubrulePredictParser.WS, i);
}

