// Generated from DependentPred2.g by antlr4dart
part of dependent_pred2;

class DependentPred2Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1, RULE_B = 2, RULE_E = 3;

  static const int T__0 = 1, ID = 2, INT = 3, WS = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x1a\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x04\x05\x09\x05\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x04\x03\x04\x03\x04\x03\x04\x03\x05\x03\x05\x05\x05"
  	"\x18\x0a\x05\x03\x05\x02\x02\x06\x02\x04\x06\x08\x02\x02\x16\x02\x0a"
  	"\x03\x02\x02\x02\x04\x0c\x03\x02\x02\x02\x06\x11\x03\x02\x02\x02\x08"
  	"\x17\x03\x02\x02\x02\x0a\x0b\x05\x04\x03\x02\x0b\x03\x03\x02\x02\x02"
  	"\x0c\x0d\x05\x08\x05\x02\x0d\x0e\x06\x03\x02\x03\x0e\x0f\x08\x03\x01"
  	"\x02\x0f\x10\x07\x03\x02\x02\x10\x05\x03\x02\x02\x02\x11\x12\x05\x08"
  	"\x05\x02\x12\x13\x06\x04\x03\x03\x13\x14\x07\x04\x02\x02\x14\x07\x03"
  	"\x02\x02\x02\x15\x18\x07\x04\x02\x02\x16\x18\x03\x02\x02\x02\x17\x15"
  	"\x03\x02\x02\x02\x17\x16\x03\x02\x02\x02\x18\x09\x03\x02\x02\x02\x03"
  	"\x17";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'!'", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a", "b", "e"
  ];

  List log = new List();
  void f(s) {log.add(s);}
  bool p(v) {log.add("eval=$v"); return v;}

  DependentPred2Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "DependentPred2.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 8; 
      a(99);
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
      enterOuterAlt(localContext, 1);
      state = 10; 
      e();
      state = 11;
      if (!(p(localContext.i==99))) 
        throw new FailedPredicateException(this, "p($i==99)");
      f("parse");
      state = 13; 
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
  BContext b(int i) {
    var localContext = new BContext.args(context, state, i);
    enterRule(localContext, 4, RULE_B);
    try {
      enterOuterAlt(localContext, 1);
      state = 15; 
      e();
      state = 16;
      if (!(p(localContext.i==99))) 
        throw new FailedPredicateException(this, "p($i==99)");
      state = 17; 
      match(ID);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  EContext e() {
    var localContext = new EContext(context, state);
    enterRule(localContext, 6, RULE_E);
    try {
      state = 21;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 19; 
          match(ID);
          break;
        case 2:
          enterOuterAlt(localContext, 2);

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
      case 2: return _bSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _bSemanticPredicate(BContext localContext, int predIndex) {
    switch (predIndex) {
      case 1: return p(localContext.i==99);
    }
    return true;
  }


  bool _aSemanticPredicate(AContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return p(localContext.i==99);
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => DependentPred2Parser.RULE_S;

  AContext getA() => getRuleContext((c) => c is AContext, 0);
}

class AContext extends ParserRuleContext {

  int i;

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  AContext.args(ParserRuleContext parent, int invokingState, this.i) : super(parent, invokingState);

  int get ruleIndex => DependentPred2Parser.RULE_A;

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class BContext extends ParserRuleContext {

  int i;

  BContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  BContext.args(ParserRuleContext parent, int invokingState, this.i) : super(parent, invokingState);

  int get ruleIndex => DependentPred2Parser.RULE_B;

  TerminalNode getID() => getToken(DependentPred2Parser.ID, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class EContext extends ParserRuleContext {

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => DependentPred2Parser.RULE_E;

  TerminalNode getID() => getToken(DependentPred2Parser.ID, 0);
}

