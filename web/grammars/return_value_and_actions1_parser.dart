// Generated from ReturnValueAndActions1.g by antlr4dart
part of return_value_and_actions1;

class ReturnValueAndActions1Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_E = 1;

  static const int T__3 = 1, T__2 = 2, T__1 = 3, T__0 = 4, INT = 5, WS = 6;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x08\x23\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x05\x03\x12\x0a\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x07\x03\x1e\x0a\x03\x0c"
  	"\x03\x0e\x03\x21\x0b\x03\x03\x03\x02\x03\x04\x04\x02\x04\x02\x02\x23"
  	"\x02\x06\x03\x02\x02\x02\x04\x11\x03\x02\x02\x02\x06\x07\x05\x04\x03"
  	"\x02\x07\x08\x08\x02\x01\x02\x08\x03\x03\x02\x02\x02\x09\x0a\x08\x03"
  	"\x01\x02\x0a\x0b\x07\x07\x02\x02\x0b\x12\x08\x03\x01\x02\x0c\x0d\x07"
  	"\x06\x02\x02\x0d\x0e\x05\x04\x03\x02\x0e\x0f\x07\x03\x02\x02\x0f\x10"
  	"\x08\x03\x01\x02\x10\x12\x03\x02\x02\x02\x11\x09\x03\x02\x02\x02\x11"
  	"\x0c\x03\x02\x02\x02\x12\x1f\x03\x02\x02\x02\x13\x14\x0c\x06\x02\x02"
  	"\x14\x15\x07\x05\x02\x02\x15\x16\x05\x04\x03\x07\x16\x17\x08\x03\x01"
  	"\x02\x17\x1e\x03\x02\x02\x02\x18\x19\x0c\x05\x02\x02\x19\x1a\x07\x04"
  	"\x02\x02\x1a\x1b\x05\x04\x03\x06\x1b\x1c\x08\x03\x01\x02\x1c\x1e\x03"
  	"\x02\x02\x02\x1d\x13\x03\x02\x02\x02\x1d\x18\x03\x02\x02\x02\x1e\x21"
  	"\x03\x02\x02\x02\x1f\x1d\x03\x02\x02\x02\x1f\x20\x03\x02\x02\x02\x20"
  	"\x05\x03\x02\x02\x02\x21\x1f\x03\x02\x02\x02\x05\x11\x1d\x1f";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "')'", "'+'", "'*'", "'('", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "e"
  ];

  List log = new List();

  ReturnValueAndActions1Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "ReturnValueAndActions1.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      localContext.e = e(0);
      log.add(localContext.e.v);
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
      switch (inputSource.lookAhead(1)) {
        case INT: 
          state = 8; 
          localContext.INT = match(INT);
          localContext.v =  localContext.INT != null ? int.parse(localContext.INT.text) : 0; 
          break;
        case T__0: 
          state = 10; 
          match(T__0);
          state = 11; 
          localContext.x = e(0);
          state = 12; 
          match(T__3);
          localContext.v =  localContext.x.v; 
          break;
        default: throw new NoViableAltException(this);
      }
      context.stop = inputSource.lookToken(-1);
      state = 29;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 2, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          state = 27;
          switch (interpreter.adaptivePredict(inputSource, 1, context)) {
            case 1:
              localContext = new EContext(_parentctx, _parentState);
              localContext.a = _prevctx;
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 17;
              if (!(precedencePredicate(context, 4))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 4)");
              state = 18; 
              match(T__1);
              state = 19; 
              localContext.b = e(5);
              localContext.v =  localContext.a.v * localContext.b.v;
              break;
            case 2:
              localContext = new EContext(_parentctx, _parentState);
              localContext.a = _prevctx;
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 22;
              if (!(precedencePredicate(context, 3))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 3)");
              state = 23; 
              match(T__2);
              state = 24; 
              localContext.b = e(4);
              localContext.v =  localContext.a.v + localContext.b.v;
              break;
          } 
        }
        state = 31;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 2, context);
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
      case 0: return precedencePredicate(context, 4);
      case 1: return precedencePredicate(context, 3);
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  EContext e;

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ReturnValueAndActions1Parser.RULE_S;

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class EContext extends ParserRuleContext {

  int v;
  List<String> ignored;
  EContext a;
  Token INT;
  EContext x;
  EContext b;

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ReturnValueAndActions1Parser.RULE_E;

  TerminalNode getINT() => getToken(ReturnValueAndActions1Parser.INT, 0);

  EContext getE(int i) => getRuleContext((c) => c is EContext, i);

  List<EContext> getEs() => getRuleContexts((c) => c is EContext);
}

