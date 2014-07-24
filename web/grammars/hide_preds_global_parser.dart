// Generated from HidePredsGlobal.g by antlr4dart
part of hide_preds_global;

class HidePredsGlobalParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_T = 1, RULE_E = 2;

  static const int T__0 = 1, ID = 2, INT = 3, WS = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x18\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x04\x03\x04\x05\x04\x16\x0a\x04\x03"
  	"\x04\x02\x02\x05\x02\x04\x06\x02\x02\x15\x02\x08\x03\x02\x02\x02\x04"
  	"\x0e\x03\x02\x02\x02\x06\x15\x03\x02\x02\x02\x08\x09\x05\x06\x04\x02"
  	"\x09\x0a\x08\x02\x01\x02\x0a\x0b\x06\x02\x02\x02\x0b\x0c\x08\x02\x01"
  	"\x02\x0c\x0d\x07\x03\x02\x02\x0d\x03\x03\x02\x02\x02\x0e\x0f\x05\x06"
  	"\x04\x02\x0f\x10\x08\x03\x01\x02\x10\x11\x06\x03\x03\x02\x11\x12\x07"
  	"\x04\x02\x02\x12\x05\x03\x02\x02\x02\x13\x16\x07\x04\x02\x02\x14\x16"
  	"\x03\x02\x02\x02\x15\x13\x03\x02\x02\x02\x15\x14\x03\x02\x02\x02\x16"
  	"\x07\x03\x02\x02\x02\x03\x15";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'!'", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "t", "e"
  ];

  List log = new List();
  void f(s) {log.add(s);}
  bool p(v) {log.add("eval=$v"); return v;}

  HidePredsGlobalParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "HidePredsGlobal.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 6; 
      e();

      state = 8;
      if (!(p(true))) 
        throw new FailedPredicateException(this, "p(true)");
      f("parse");
      state = 10; 
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
  TContext t() {
    var localContext = new TContext(context, state);
    enterRule(localContext, 2, RULE_T);
    try {
      enterOuterAlt(localContext, 1);
      state = 12; 
      e();

      state = 14;
      if (!(p(false))) 
        throw new FailedPredicateException(this, "p(false)");
      state = 15; 
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
    enterRule(localContext, 4, RULE_E);
    try {
      state = 19;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 17; 
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
      case 0: return _sSemanticPredicate(localContext, predIndex);
      case 1: return _tSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _tSemanticPredicate(TContext localContext, int predIndex) {
    switch (predIndex) {
      case 1: return p(false);
    }
    return true;
  }


  bool _sSemanticPredicate(SContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return p(true);
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => HidePredsGlobalParser.RULE_S;

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class TContext extends ParserRuleContext {

  TContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => HidePredsGlobalParser.RULE_T;

  TerminalNode getID() => getToken(HidePredsGlobalParser.ID, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class EContext extends ParserRuleContext {

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => HidePredsGlobalParser.RULE_E;

  TerminalNode getID() => getToken(HidePredsGlobalParser.ID, 0);
}

