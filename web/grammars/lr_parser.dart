// Generated from LR.g by antlr4dart
part of lr;

class LRParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_E = 1;

  static const int MULT = 1, ADD = 2, INT = 3, WS = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x17\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x07\x03\x12\x0a\x03\x0c\x03\x0e\x03\x15\x0b\x03\x03\x03"
  	"\x02\x03\x04\x04\x02\x04\x02\x02\x16\x02\x06\x03\x02\x02\x02\x04\x08"
  	"\x03\x02\x02\x02\x06\x07\x05\x04\x03\x02\x07\x03\x03\x02\x02\x02\x08"
  	"\x09\x08\x03\x01\x02\x09\x0a\x07\x05\x02\x02\x0a\x13\x03\x02\x02\x02"
  	"\x0b\x0c\x0c\x05\x02\x02\x0c\x0d\x07\x03\x02\x02\x0d\x12\x05\x04\x03"
  	"\x06\x0e\x0f\x0c\x04\x02\x02\x0f\x10\x07\x04\x02\x02\x10\x12\x05\x04"
  	"\x03\x05\x11\x0b\x03\x02\x02\x02\x11\x0e\x03\x02\x02\x02\x12\x15\x03"
  	"\x02\x02\x02\x13\x11\x03\x02\x02\x02\x13\x14\x03\x02\x02\x02\x14\x05"
  	"\x03\x02\x02\x02\x15\x13\x03\x02\x02\x02\x04\x11\x13";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'*'", "'+'", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "e"
  ];

  List log = new List();

  LRParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "LR.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
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
      state = 7; 
      match(INT);
      context.stop = inputSource.lookToken(-1);
      state = 17;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 1, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          state = 15;
          switch (interpreter.adaptivePredict(inputSource, 0, context)) {
            case 1:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 9;
              if (!(precedencePredicate(context, 3))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 3)");
              state = 10; 
              localContext.op = match(MULT);
              state = 11; 
              e(4);
              break;
            case 2:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 12;
              if (!(precedencePredicate(context, 2))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 2)");
              state = 13; 
              localContext.op = match(ADD);
              state = 14; 
              e(3);
              break;
          } 
        }
        state = 19;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 1, context);
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

  bool semanticPredicate(RuleContext localContext, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 1: return _eSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _eSemanticPredicate(EContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return precedencePredicate(context, 3);
      case 1: return precedencePredicate(context, 2);
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  EContext r;

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LRParser.RULE_S;

  EContext getE() => getRuleContext((c) => c is EContext, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is LRListener) 
      listener.enterS(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is LRListener) 
      listener.exitS(this);
  }
}

class EContext extends ParserRuleContext {

  Token op;

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LRParser.RULE_E;

  TerminalNode getINT() => getToken(LRParser.INT, 0);

  EContext getE(int i) => getRuleContext((c) => c is EContext, i);

  List<EContext> getEs() => getRuleContexts((c) => c is EContext);

  void enterRule(ParseTreeListener listener) {
    if (listener is LRListener) 
      listener.enterE(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is LRListener) 
      listener.exitE(this);
  }
}

