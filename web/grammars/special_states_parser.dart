// Generated from SpecialStates.g by antlr4dart
part of special_states;

class SpecialStatesParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_R = 0;

  static const int NAME = 1, NUMBER = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x1b\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x03\x02\x03\x02\x06\x02\x0a\x0a\x02\x0d\x02\x0e\x02\x0b\x03\x02\x05"
  	"\x02\x0f\x0a\x02\x03\x02\x06\x02\x12\x0a\x02\x0d\x02\x0e\x02\x13\x03"
  	"\x02\x05\x02\x17\x0a\x02\x03\x02\x03\x02\x03\x02\x02\x02\x03\x02\x02"
  	"\x02\x1d\x02\x0e\x03\x02\x02\x02\x04\x05\x06\x02\x02\x02\x05\x0f\x07"
  	"\x03\x02\x02\x06\x07\x06\x02\x03\x02\x07\x09\x07\x03\x02\x02\x08\x0a"
  	"\x07\x05\x02\x02\x09\x08\x03\x02\x02\x02\x0a\x0b\x03\x02\x02\x02\x0b"
  	"\x09\x03\x02\x02\x02\x0b\x0c\x03\x02\x02\x02\x0c\x0d\x03\x02\x02\x02"
  	"\x0d\x0f\x07\x03\x02\x02\x0e\x04\x03\x02\x02\x02\x0e\x06\x03\x02\x02"
  	"\x02\x0f\x16\x03\x02\x02\x02\x10\x12\x07\x05\x02\x02\x11\x10\x03\x02"
  	"\x02\x02\x12\x13\x03\x02\x02\x02\x13\x11\x03\x02\x02\x02\x13\x14\x03"
  	"\x02\x02\x02\x14\x15\x03\x02\x02\x02\x15\x17\x07\x03\x02\x02\x16\x11"
  	"\x03\x02\x02\x02\x16\x17\x03\x02\x02\x02\x17\x18\x03\x02\x02\x02\x18"
  	"\x19\x07\x02\x02\x03\x19\x03\x03\x02\x02\x02\x06\x0b\x0e\x13\x16";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "NAME", "NUMBER", "WS"
  ];

  final List<String> ruleNames = [
    "r"
  ];

  bool cond = true;

  void recover(dynamic e) {
    throw e;
  }

  SpecialStatesParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "SpecialStates.g";
  RContext r() {
    var localContext = new RContext(context, state);
    enterRule(localContext, 0, RULE_R);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 12;
      switch (interpreter.adaptivePredict(inputSource, 1, context)) {
        case 1:
          state = 2;
          if (!(cond)) 
            throw new FailedPredicateException(this, "cond");
          state = 3; 
          match(NAME);
          break;
        case 2:
          state = 4;
          if (!(!cond)) 
            throw new FailedPredicateException(this, "!cond");
          state = 5; 
          match(NAME);
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
          match(NAME);
          break;
      }
      state = 20;
      _la = inputSource.lookAhead(1);
      if (_la == WS) {
        state = 15; 
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
        do {
          state = 14; 
          match(WS);
          state = 17; 
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
        } while (_la == WS);
        state = 19; 
        match(NAME);
      }
      state = 22; 
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
      case 1: return !cond;
    }
    return true;
  }
}

class RContext extends ParserRuleContext {

  RContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SpecialStatesParser.RULE_R;

  TerminalNode getEOF() => getToken(SpecialStatesParser.EOF, 0);

  List<TerminalNode> getWSs() => getTokens(SpecialStatesParser.WS);

  TerminalNode getNAME(int i) => getToken(SpecialStatesParser.NAME, i);

  List<TerminalNode> getNAMEs() => getTokens(SpecialStatesParser.NAME);

  TerminalNode getWS(int i) => getToken(SpecialStatesParser.WS, i);
}

