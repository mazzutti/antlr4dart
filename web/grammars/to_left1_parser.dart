// Generated from ToLeft1.g by antlr4dart
part of to_left1;

class ToLeft1Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1;

  static const int ID = 1, INT = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x14\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x06\x02\x08\x0a\x02\x0d\x02\x0e\x02\x09\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x05\x03\x12\x0a\x03\x03\x03\x02\x02\x04\x02\x04"
  	"\x02\x02\x13\x02\x07\x03\x02\x02\x02\x04\x11\x03\x02\x02\x02\x06\x08"
  	"\x05\x04\x03\x02\x07\x06\x03\x02\x02\x02\x08\x09\x03\x02\x02\x02\x09"
  	"\x07\x03\x02\x02\x02\x09\x0a\x03\x02\x02\x02\x0a\x03\x03\x02\x02\x02"
  	"\x0b\x0c\x06\x03\x02\x02\x0c\x0d\x07\x03\x02\x02\x0d\x12\x08\x03\x01"
  	"\x02\x0e\x0f\x06\x03\x03\x02\x0f\x10\x07\x03\x02\x02\x10\x12\x08\x03"
  	"\x01\x02\x11\x0b\x03\x02\x02\x02\x11\x0e\x03\x02\x02\x02\x12\x05\x03"
  	"\x02\x02\x02\x04\x09\x11";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a"
  ];

  List log = new List();

  ToLeft1Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "ToLeft1.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      var _alt;
      enterOuterAlt(localContext, 1);
      state = 5; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
        	  state = 4; 
        	  a();
        	  break;
      	default:
      	  throw new NoViableAltException(this);
        }
        state = 7; 
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 0, context);
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
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 2, RULE_A);
    try {
      state = 15;
      switch (interpreter.adaptivePredict(inputSource, 1, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 9;
          if (!(false)) 
            throw new FailedPredicateException(this, "false");
          state = 10; 
          match(ID);
          log.add("alt 1");
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 12;
          if (!(true)) 
            throw new FailedPredicateException(this, "true");
          state = 13; 
          match(ID);
          log.add("alt 2");
          break;
      }
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
      case 1: return _aSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _aSemanticPredicate(AContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return false;
      case 1: return true;
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ToLeft1Parser.RULE_S;

  AContext getA(int i) => getRuleContext((c) => c is AContext, i);

  List<AContext> getAs() => getRuleContexts((c) => c is AContext);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ToLeft1Parser.RULE_A;

  TerminalNode getID() => getToken(ToLeft1Parser.ID, 0);
}

