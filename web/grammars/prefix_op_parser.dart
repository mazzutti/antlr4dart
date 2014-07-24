// Generated from PrefixOp.g by antlr4dart
part of prefix_op;

class PrefixOpParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_E = 1;

  static const int T__1 = 1, T__0 = 2, ID = 3, INT = 4, WS = 5;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x07\x1e\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x05\x03\x12\x0a\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x07\x03\x19\x0a\x03\x0c\x03\x0e\x03\x1c\x0b\x03\x03\x03\x02\x03"
  	"\x04\x04\x02\x04\x02\x02\x1d\x02\x06\x03\x02\x02\x02\x04\x11\x03\x02"
  	"\x02\x02\x06\x07\x05\x04\x03\x02\x07\x08\x08\x02\x01\x02\x08\x03\x03"
  	"\x02\x02\x02\x09\x0a\x08\x03\x01\x02\x0a\x0b\x07\x05\x02\x02\x0b\x0c"
  	"\x07\x04\x02\x02\x0c\x0d\x05\x04\x03\x05\x0d\x0e\x08\x03\x01\x02\x0e"
  	"\x12\x03\x02\x02\x02\x0f\x10\x07\x05\x02\x02\x10\x12\x08\x03\x01\x02"
  	"\x11\x09\x03\x02\x02\x02\x11\x0f\x03\x02\x02\x02\x12\x1a\x03\x02\x02"
  	"\x02\x13\x14\x0c\x03\x02\x02\x14\x15\x07\x03\x02\x02\x15\x16\x05\x04"
  	"\x03\x04\x16\x17\x08\x03\x01\x02\x17\x19\x03\x02\x02\x02\x18\x13\x03"
  	"\x02\x02\x02\x19\x1c\x03\x02\x02\x02\x1a\x18\x03\x02\x02\x02\x1a\x1b"
  	"\x03\x02\x02\x02\x1b\x05\x03\x02\x02\x02\x1c\x1a\x03\x02\x02\x02\x04"
  	"\x11\x1a";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'+'", "'='", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "e"
  ];

  List log = new List();

  PrefixOpParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "PrefixOp.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      localContext.e = e(0);
      log.add(localContext.e.result);
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
      state = 15;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          state = 8; 
          localContext.ID = match(ID);
          state = 9; 
          match(T__0);
          state = 10; 
          localContext.e1 = e(3);
           localContext.result =  "(${localContext.ID != null ? localContext.ID.text : null}=${localContext.e1.result})"; 
          break;
        case 2:
          state = 13; 
          localContext.ID = match(ID);
           localContext.result =  localContext.ID != null ? localContext.ID.text : null; 
          break;
      }
      context.stop = inputSource.lookToken(-1);
      state = 24;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 1, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          localContext = new EContext(_parentctx, _parentState);
          localContext.e1 = _prevctx;
          pushNewRecursionContext(localContext, _startState, RULE_E);
          state = 17;
          if (!(precedencePredicate(context, 1))) 
            throw new FailedPredicateException(this, "precedencePredicate(context, 1)");
          state = 18; 
          match(T__1);
          state = 19; 
          localContext.e2 = e(2);
           localContext.result =  "(${localContext.e1.result}+${localContext.e2.result})";  
        }
        state = 26;
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
      case 0: return precedencePredicate(context, 1);
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  EContext e;

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => PrefixOpParser.RULE_S;

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class EContext extends ParserRuleContext {

  String result;
  EContext e1;
  Token ID;
  EContext e2;

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => PrefixOpParser.RULE_E;

  TerminalNode getID() => getToken(PrefixOpParser.ID, 0);

  EContext getE(int i) => getRuleContext((c) => c is EContext, i);

  List<EContext> getEs() => getRuleContexts((c) => c is EContext);
}

