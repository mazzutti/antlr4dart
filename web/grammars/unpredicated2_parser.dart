// Generated from Unpredicated2.g by antlr4dart
part of unpredicated2;

class Unpredicated2Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1;

  static const int T__0 = 1, ID = 2, INT = 3, WS = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x15\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x05\x03\x13\x0a\x03\x03\x03\x02\x02\x04\x02\x04"
  	"\x02\x02\x14\x02\x06\x03\x02\x02\x02\x04\x12\x03\x02\x02\x02\x06\x07"
  	"\x08\x02\x01\x02\x07\x08\x05\x04\x03\x02\x08\x09\x07\x03\x02\x02\x09"
  	"\x0a\x05\x04\x03\x02\x0a\x03\x03\x02\x02\x02\x0b\x0c\x07\x04\x02\x02"
  	"\x0c\x13\x08\x03\x01\x02\x0d\x0e\x07\x04\x02\x02\x0e\x13\x08\x03\x01"
  	"\x02\x0f\x10\x06\x03\x02\x02\x10\x11\x07\x04\x02\x02\x11\x13\x08\x03"
  	"\x01\x02\x12\x0b\x03\x02\x02\x02\x12\x0d\x03\x02\x02\x02\x12\x0f\x03"
  	"\x02\x02\x02\x13\x05\x03\x02\x02\x02\x03\x12";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "';'", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a"
  ];

  List log = new List();

  Unpredicated2Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Unpredicated2.g";
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
      state = 16;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 9; 
          match(ID);
          log.add("alt 1");
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 11; 
          match(ID);
          log.add("alt 2");
          break;
        case 3:
          enterOuterAlt(localContext, 3);
          state = 13;
          if (!(false)) 
            throw new FailedPredicateException(this, "false");
          state = 14; 
          match(ID);
          log.add("alt 3");
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

  int get ruleIndex => Unpredicated2Parser.RULE_S;

  AContext getA(int i) => getRuleContext((c) => c is AContext, i);

  List<AContext> getAs() => getRuleContexts((c) => c is AContext);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Unpredicated2Parser.RULE_A;

  TerminalNode getID() => getToken(Unpredicated2Parser.ID, 0);
}

