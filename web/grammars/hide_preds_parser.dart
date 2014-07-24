// Generated from HidePreds.g by antlr4dart
part of hide_preds;

class HidePredsParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1;

  static const int ID = 1, INT = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x16\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x06\x02\x08\x0a\x02\x0d\x02\x0e\x02\x09\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x05\x03\x14\x0a\x03\x03\x03\x02"
  	"\x02\x04\x02\x04\x02\x02\x15\x02\x07\x03\x02\x02\x02\x04\x13\x03\x02"
  	"\x02\x02\x06\x08\x05\x04\x03\x02\x07\x06\x03\x02\x02\x02\x08\x09\x03"
  	"\x02\x02\x02\x09\x07\x03\x02\x02\x02\x09\x0a\x03\x02\x02\x02\x0a\x03"
  	"\x03\x02\x02\x02\x0b\x0c\x08\x03\x01\x02\x0c\x0d\x07\x03\x02\x02\x0d"
  	"\x0e\x06\x03\x02\x02\x0e\x14\x08\x03\x01\x02\x0f\x10\x08\x03\x01\x02"
  	"\x10\x11\x07\x03\x02\x02\x11\x12\x06\x03\x03\x02\x12\x14\x08\x03\x01"
  	"\x02\x13\x0b\x03\x02\x02\x02\x13\x0f\x03\x02\x02\x02\x14\x05\x03\x02"
  	"\x02\x02\x04\x09\x13";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a"
  ];

  List log = new List();
  int i;

  HidePredsParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "HidePreds.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 5; 
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      do {
        state = 4; 
        a();
        state = 7; 
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      } while (_la == ID);
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
      state = 17;
      switch (interpreter.adaptivePredict(inputSource, 1, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          i=1;
          state = 10; 
          match(ID);
          state = 11;
          if (!(i==1)) 
            throw new FailedPredicateException(this, "i==1");
          log.add("alt 1");
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          i=2;
          state = 14; 
          match(ID);
          state = 15;
          if (!(i==2)) 
            throw new FailedPredicateException(this, "i==2");
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
      case 0: return i==1;
      case 1: return i==2;
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => HidePredsParser.RULE_S;

  AContext getA(int i) => getRuleContext((c) => c is AContext, i);

  List<AContext> getAs() => getRuleContexts((c) => c is AContext);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => HidePredsParser.RULE_A;

  TerminalNode getID() => getToken(HidePredsParser.ID, 0);
}

