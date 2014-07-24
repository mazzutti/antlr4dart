// Generated from Unpredicated1.g by antlr4dart
part of unpredicated1;

class Unpredicated1Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1;

  static const int T__0 = 1, ID = 2, INT = 3, WS = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x19\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x05\x03\x17\x0a"
  	"\x03\x03\x03\x02\x02\x04\x02\x04\x02\x02\x19\x02\x06\x03\x02\x02\x02"
  	"\x04\x16\x03\x02\x02\x02\x06\x07\x08\x02\x01\x02\x07\x08\x05\x04\x03"
  	"\x02\x08\x09\x07\x03\x02\x02\x09\x0a\x05\x04\x03\x02\x0a\x0b\x07\x03"
  	"\x02\x02\x0b\x0c\x05\x04\x03\x02\x0c\x03\x03\x02\x02\x02\x0d\x0e\x07"
  	"\x05\x02\x02\x0e\x17\x08\x03\x01\x02\x0f\x10\x07\x04\x02\x02\x10\x17"
  	"\x08\x03\x01\x02\x11\x12\x07\x04\x02\x02\x12\x17\x08\x03\x01\x02\x13"
  	"\x14\x06\x03\x02\x02\x14\x15\x07\x04\x02\x02\x15\x17\x08\x03\x01\x02"
  	"\x16\x0d\x03\x02\x02\x02\x16\x0f\x03\x02\x02\x02\x16\x11\x03\x02\x02"
  	"\x02\x16\x13\x03\x02\x02\x02\x17\x05\x03\x02\x02\x02\x03\x16";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "';'", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a"
  ];

  List log = new List();

  Unpredicated1Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Unpredicated1.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      interpreter.predictionMode = PredictionMode.LL_EXACT_AMBIG_DETECTION;
      state = 5; 
      a();
      state = 6; 
      match(T__0);
      state = 7; 
      a();
      state = 8; 
      match(T__0);
      state = 9; 
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
      state = 20;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 11; 
          match(INT);
          log.add("alt 1");
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 13; 
          match(ID);
          log.add("alt 2");
          break;
        case 3:
          enterOuterAlt(localContext, 3);
          state = 15; 
          match(ID);
          log.add("alt 3");
          break;
        case 4:
          enterOuterAlt(localContext, 4);
          state = 17;
          if (!(false)) 
            throw new FailedPredicateException(this, "false");
          state = 18; 
          match(ID);
          log.add("alt 4");
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
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Unpredicated1Parser.RULE_S;

  AContext getA(int i) => getRuleContext((c) => c is AContext, i);

  List<AContext> getAs() => getRuleContexts((c) => c is AContext);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Unpredicated1Parser.RULE_A;

  TerminalNode getINT() => getToken(Unpredicated1Parser.INT, 0);

  TerminalNode getID() => getToken(Unpredicated1Parser.ID, 0);
}

