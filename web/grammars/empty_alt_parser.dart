// Generated from EmptyAlt.g by antlr4dart
part of empty_alt;

class EmptyAltParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_R = 0;

  static const int NAME = 1, NUMBER = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x12\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x06\x02\x08\x0a\x02\x0d\x02\x0e\x02\x09\x03\x02\x03\x02\x05\x02\x0e"
  	"\x0a\x02\x03\x02\x03\x02\x03\x02\x02\x02\x03\x02\x02\x02\x12\x02\x04"
  	"\x03\x02\x02\x02\x04\x0d\x07\x03\x02\x02\x05\x07\x06\x02\x02\x02\x06"
  	"\x08\x07\x05\x02\x02\x07\x06\x03\x02\x02\x02\x08\x09\x03\x02\x02\x02"
  	"\x09\x07\x03\x02\x02\x02\x09\x0a\x03\x02\x02\x02\x0a\x0b\x03\x02\x02"
  	"\x02\x0b\x0e\x07\x03\x02\x02\x0c\x0e\x03\x02\x02\x02\x0d\x05\x03\x02"
  	"\x02\x02\x0d\x0c\x03\x02\x02\x02\x0e\x0f\x03\x02\x02\x02\x0f\x10\x07"
  	"\x02\x02\x03\x10\x03\x03\x02\x02\x02\x04\x09\x0d";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "NAME", "NUMBER", "WS"
  ];

  final List<String> ruleNames = [
    "r"
  ];

  bool cond = true;

  EmptyAltParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "EmptyAlt.g";
  RContext r() {
    var localContext = new RContext(context, state);
    enterRule(localContext, 0, RULE_R);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 2; 
      match(NAME);
      state = 11;
      switch (interpreter.adaptivePredict(inputSource, 1, context)) {
        case 1:
          state = 3;
          if (!(cond)) 
            throw new FailedPredicateException(this, "cond");
          state = 5; 
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
          do {
            state = 4; 
            match(WS);
            state = 7; 
            errorHandler.sync(this);
            _la = inputSource.lookAhead(1);
          } while (_la == WS);
          state = 9; 
          match(NAME);
          break;
        case 2:
          break;
      }
      state = 13; 
      match(EOF);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }

  bool semanticPredicate(RuleContext localContext, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 0: return _rSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _rSemanticPredicate(RContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return cond;
    }
    return true;
  }
}

class RContext extends ParserRuleContext {

  RContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => EmptyAltParser.RULE_R;

  TerminalNode getEOF() => getToken(EmptyAltParser.EOF, 0);

  List<TerminalNode> getWSs() => getTokens(EmptyAltParser.WS);

  TerminalNode getNAME(int i) => getToken(EmptyAltParser.NAME, i);

  List<TerminalNode> getNAMEs() => getTokens(EmptyAltParser.NAME);

  TerminalNode getWS(int i) => getToken(EmptyAltParser.WS, i);
}

