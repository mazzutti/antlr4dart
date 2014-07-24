// Generated from PredicateDependent1.g by antlr4dart
part of predicate_dependent1;

class PredicateDependent1Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1;

  static const int ID = 1, INT = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x12\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x05"
  	"\x03\x10\x0a\x03\x03\x03\x02\x02\x04\x02\x04\x02\x02\x10\x02\x06\x03"
  	"\x02\x02\x02\x04\x0f\x03\x02\x02\x02\x06\x07\x05\x04\x03\x02\x07\x08"
  	"\x05\x04\x03\x02\x08\x03\x03\x02\x02\x02\x09\x0a\x06\x03\x02\x03\x0a"
  	"\x0b\x07\x03\x02\x02\x0b\x10\x08\x03\x01\x02\x0c\x0d\x06\x03\x03\x03"
  	"\x0d\x0e\x07\x03\x02\x02\x0e\x10\x08\x03\x01\x02\x0f\x09\x03\x02\x02"
  	"\x02\x0f\x0c\x03\x02\x02\x02\x10\x05\x03\x02\x02\x02\x03\x0f";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a"
  ];

  List log = new List();
  int i=0;

  PredicateDependent1Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "PredicateDependent1.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      a(2);
      state = 5; 
      a(1);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  AContext a(int i) {
    var localContext = new AContext.args(context, state, i);
    enterRule(localContext, 2, RULE_A);
    try {
      state = 13;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 7;
          if (!(localContext.i==1)) 
            throw new FailedPredicateException(this, "$i==1");
          state = 8; 
          match(ID);
          log.add("alt 1");
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 10;
          if (!(localContext.i==2)) 
            throw new FailedPredicateException(this, "$i==2");
          state = 11; 
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
      case 0: return localContext.i==1;
      case 1: return localContext.i==2;
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => PredicateDependent1Parser.RULE_S;

  AContext getA(int i) => getRuleContext((c) => c is AContext, i);

  List<AContext> getAs() => getRuleContexts((c) => c is AContext);
}

class AContext extends ParserRuleContext {

  int i;

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  AContext.args(ParserRuleContext parent, int invokingState, this.i) : super(parent, invokingState);

  int get ruleIndex => PredicateDependent1Parser.RULE_A;

  TerminalNode getID() => getToken(PredicateDependent1Parser.ID, 0);
}

