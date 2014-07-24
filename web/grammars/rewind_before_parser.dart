// Generated from RewindBefore.g by antlr4dart
part of rewind_before;

class RewindBeforeParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1;

  static const int ID = 1, INT = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x14\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x05\x03\x12\x0a\x03\x03\x03\x02\x02\x04\x02\x04\x02\x02"
  	"\x12\x02\x06\x03\x02\x02\x02\x04\x11\x03\x02\x02\x02\x06\x07\x05\x04"
  	"\x03\x02\x07\x08\x05\x04\x03\x02\x08\x03\x03\x02\x02\x02\x09\x0a\x06"
  	"\x03\x02\x02\x0a\x0b\x07\x03\x02\x02\x0b\x0c\x07\x04\x02\x02\x0c\x12"
  	"\x08\x03\x01\x02\x0d\x0e\x06\x03\x03\x02\x0e\x0f\x07\x03\x02\x02\x0f"
  	"\x10\x07\x04\x02\x02\x10\x12\x08\x03\x01\x02\x11\x09\x03\x02\x02\x02"
  	"\x11\x0d\x03\x02\x02\x02\x12\x05\x03\x02\x02\x02\x03\x11";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a"
  ];

  List log = new List();

  RewindBeforeParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "RewindBefore.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      a();
      state = 5; 
      a();
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
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 7;
          if (!(inputSource.lookToken(1).text == "x")) 
            throw new FailedPredicateException(this, "inputSource.lookToken(1).text == \"x\"");
          state = 8; 
          match(ID);
          state = 9; 
          match(INT);
          log.add("alt 1");
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 11;
          if (!(inputSource.lookToken(1).text == "y")) 
            throw new FailedPredicateException(this, "inputSource.lookToken(1).text == \"y\"");
          state = 12; 
          match(ID);
          state = 13; 
          match(INT);
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
      case 0: return inputSource.lookToken(1).text == "x";
      case 1: return inputSource.lookToken(1).text == "y";
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => RewindBeforeParser.RULE_S;

  AContext getA(int i) => getRuleContext((c) => c is AContext, i);

  List<AContext> getAs() => getRuleContexts((c) => c is AContext);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => RewindBeforeParser.RULE_A;

  TerminalNode getINT() => getToken(RewindBeforeParser.INT, 0);

  TerminalNode getID() => getToken(RewindBeforeParser.ID, 0);
}

