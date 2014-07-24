// Generated from LRWithLabels.g by antlr4dart
part of lr_with_labels;

class LRWithLabelsParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_E = 1, RULE_ELIST = 2;

  static const int T__2 = 1, T__1 = 2, T__0 = 3, MULT = 4, ADD = 5, INT = 6, 
                   WS = 7;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x09\x20\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x07\x03\x13\x0a\x03\x0c\x03\x0e\x03\x16\x0b\x03"
  	"\x03\x04\x03\x04\x03\x04\x07\x04\x1b\x0a\x04\x0c\x04\x0e\x04\x1e\x0b"
  	"\x04\x03\x04\x02\x03\x04\x05\x02\x04\x06\x02\x02\x1e\x02\x08\x03\x02"
  	"\x02\x02\x04\x0a\x03\x02\x02\x02\x06\x17\x03\x02\x02\x02\x08\x09\x05"
  	"\x04\x03\x02\x09\x03\x03\x02\x02\x02\x0a\x0b\x08\x03\x01\x02\x0b\x0c"
  	"\x07\x08\x02\x02\x0c\x14\x03\x02\x02\x02\x0d\x0e\x0c\x04\x02\x02\x0e"
  	"\x0f\x07\x05\x02\x02\x0f\x10\x05\x06\x04\x02\x10\x11\x07\x03\x02\x02"
  	"\x11\x13\x03\x02\x02\x02\x12\x0d\x03\x02\x02\x02\x13\x16\x03\x02\x02"
  	"\x02\x14\x12\x03\x02\x02\x02\x14\x15\x03\x02\x02\x02\x15\x05\x03\x02"
  	"\x02\x02\x16\x14\x03\x02\x02\x02\x17\x1c\x05\x04\x03\x02\x18\x19\x07"
  	"\x04\x02\x02\x19\x1b\x05\x04\x03\x02\x1a\x18\x03\x02\x02\x02\x1b\x1e"
  	"\x03\x02\x02\x02\x1c\x1a\x03\x02\x02\x02\x1c\x1d\x03\x02\x02\x02\x1d"
  	"\x07\x03\x02\x02\x02\x1e\x1c\x03\x02\x02\x02\x04\x14\x1c";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "')'", "','", "'('", "'*'", "'+'", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "e", "eList"
  ];

  List log = new List();

  LRWithLabelsParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "LRWithLabels.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 6; 
      localContext.r = e(0);
      log.add(localContext.r.toString(this));
      ParseTreeWalker walker = new ParseTreeWalker();
      walker.walk(new LeafListener(log), localContext.r);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  EContext e([int _p = 0]) {
    var _parentctx = context;
    int _parentState = state;
    var localContext = new EContext(context, _parentState);
    var _prevctx = localContext;
    int _startState = 2;
    enterRecursionRule(localContext, 2, RULE_E, _p);
    try {
      int _alt;
      enterOuterAlt(localContext, 1);
      localContext = new IntContext(localContext);
      context = localContext;
      _prevctx = localContext;

      state = 9; 
      match(INT);
      context.stop = inputSource.lookToken(-1);
      state = 18;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 0, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          localContext = new CallContext(new EContext(_parentctx, _parentState));
          pushNewRecursionContext(localContext, _startState, RULE_E);
          state = 11;
          if (!(precedencePredicate(context, 2))) 
            throw new FailedPredicateException(this, "precedencePredicate(context, 2)");
          state = 12; 
          match(T__0);
          state = 13; 
          eList();
          state = 14; 
          match(T__2); 
        }
        state = 20;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 0, context);
      }
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
  	errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return localContext;
  }
  EListContext eList() {
    var localContext = new EListContext(context, state);
    enterRule(localContext, 4, RULE_ELIST);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 21; 
      e(0);
      state = 26;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == T__1) {
        state = 22; 
        match(T__1);
        state = 23; 
        e(0);
        state = 28;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
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
      case 1: return _eSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _eSemanticPredicate(EContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return precedencePredicate(context, 2);
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  EContext r;

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LRWithLabelsParser.RULE_S;

  EContext getE() => getRuleContext((c) => c is EContext, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is LRWithLabelsListener) 
      listener.enterS(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is LRWithLabelsListener) 
      listener.exitS(this);
  }
}

class EContext extends ParserRuleContext {

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LRWithLabelsParser.RULE_E;
 
  EContext.from(EContext context) : super.from(context) {
  }
}

class EListContext extends ParserRuleContext {

  EListContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LRWithLabelsParser.RULE_ELIST;

  EContext getE(int i) => getRuleContext((c) => c is EContext, i);

  List<EContext> getEs() => getRuleContexts((c) => c is EContext);

  void enterRule(ParseTreeListener listener) {
    if (listener is LRWithLabelsListener) 
      listener.enterEList(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is LRWithLabelsListener) 
      listener.exitEList(this);
  }
}

class CallContext extends EContext {
  EListContext getEList() => getRuleContext((c) => c is EListContext, 0);
  EContext getE() => getRuleContext((c) => c is EContext, 0);
  CallContext(EContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is LRWithLabelsListener) 
      listener.enterCall(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is LRWithLabelsListener) 
      listener.exitCall(this);
  }
}

class IntContext extends EContext {
  TerminalNode getINT() => getToken(LRWithLabelsParser.INT, 0);
  IntContext(EContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is LRWithLabelsListener) 
      listener.enterInt(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is LRWithLabelsListener) 
      listener.exitInt(this);
  }
}