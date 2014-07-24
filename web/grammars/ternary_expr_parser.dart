// Generated from TernaryExpr.g by antlr4dart
part of ternary_expr;

class TernaryExprParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_E = 1;

  static const int T__4 = 1, T__3 = 2, T__2 = 3, T__1 = 4, T__0 = 5, ID = 6, 
                   WS = 7;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x09\x21\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x07\x03\x1c\x0a\x03\x0c\x03\x0e\x03\x1f\x0b"
  	"\x03\x03\x03\x02\x03\x04\x04\x02\x04\x02\x02\x22\x02\x06\x03\x02\x02"
  	"\x02\x04\x09\x03\x02\x02\x02\x06\x07\x05\x04\x03\x02\x07\x08\x07\x02"
  	"\x02\x03\x08\x03\x03\x02\x02\x02\x09\x0a\x08\x03\x01\x02\x0a\x0b\x07"
  	"\x08\x02\x02\x0b\x1d\x03\x02\x02\x02\x0c\x0d\x0c\x07\x02\x02\x0d\x0e"
  	"\x07\x04\x02\x02\x0e\x1c\x05\x04\x03\x08\x0f\x10\x0c\x06\x02\x02\x10"
  	"\x11\x07\x03\x02\x02\x11\x1c\x05\x04\x03\x07\x12\x13\x0c\x05\x02\x02"
  	"\x13\x14\x07\x07\x02\x02\x14\x15\x05\x04\x03\x02\x15\x16\x07\x05\x02"
  	"\x02\x16\x17\x05\x04\x03\x06\x17\x1c\x03\x02\x02\x02\x18\x19\x0c\x04"
  	"\x02\x02\x19\x1a\x07\x06\x02\x02\x1a\x1c\x05\x04\x03\x05\x1b\x0c\x03"
  	"\x02\x02\x02\x1b\x0f\x03\x02\x02\x02\x1b\x12\x03\x02\x02\x02\x1b\x18"
  	"\x03\x02\x02\x02\x1c\x1f\x03\x02\x02\x02\x1d\x1b\x03\x02\x02\x02\x1d"
  	"\x1e\x03\x02\x02\x02\x1e\x05\x03\x02\x02\x02\x1f\x1d\x03\x02\x02\x02"
  	"\x04\x1b\x1d";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'+'", "'*'", "':'", "'='", "'?'", "ID", "WS"
  ];

  final List<String> ruleNames = [
    "s", "e"
  ];

  List log = new List();

  TernaryExprParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "TernaryExpr.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      e(0);
      state = 5; 
      match(EOF);
      log.add(localContext.toString(this));
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
      state = 8; 
      match(ID);
      context.stop = inputSource.lookToken(-1);
      state = 27;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 1, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          state = 25;
          switch (interpreter.adaptivePredict(inputSource, 0, context)) {
            case 1:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 10;
              if (!(precedencePredicate(context, 5))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 5)");
              state = 11; 
              match(T__3);
              state = 12; 
              e(6);
              break;
            case 2:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 13;
              if (!(precedencePredicate(context, 4))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 4)");
              state = 14; 
              match(T__4);
              state = 15; 
              e(5);
              break;
            case 3:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 16;
              if (!(precedencePredicate(context, 3))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 3)");
              state = 17; 
              match(T__0);
              state = 18; 
              e(0);
              state = 19; 
              match(T__2);
              state = 20; 
              e(4);
              break;
            case 4:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 22;
              if (!(precedencePredicate(context, 2))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 2)");
              state = 23; 
              match(T__1);
              state = 24; 
              e(3);
              break;
          } 
        }
        state = 29;
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
      case 0: return precedencePredicate(context, 5);
      case 1: return precedencePredicate(context, 4);
      case 2: return precedencePredicate(context, 3);
      case 3: return precedencePredicate(context, 2);
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TernaryExprParser.RULE_S;

  TerminalNode getEOF() => getToken(TernaryExprParser.EOF, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class EContext extends ParserRuleContext {

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TernaryExprParser.RULE_E;

  TerminalNode getID() => getToken(TernaryExprParser.ID, 0);

  EContext getE(int i) => getRuleContext((c) => c is EContext, i);

  List<EContext> getEs() => getRuleContexts((c) => c is EContext);
}

