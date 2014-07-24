// Generated from Expressions.g by antlr4dart
part of expressions;

class ExpressionsParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_E = 1;

  static const int T__4 = 1, T__3 = 2, T__2 = 3, T__1 = 4, T__0 = 5, ID = 6, 
                   INT = 7, WS = 8;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x0a\x22\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x05\x03\x0f"
  	"\x0a\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x07\x03\x1d\x0a\x03\x0c\x03\x0e"
  	"\x03\x20\x0b\x03\x03\x03\x02\x03\x04\x04\x02\x04\x02\x03\x03\x02\x05"
  	"\x06\x25\x02\x06\x03\x02\x02\x02\x04\x0e\x03\x02\x02\x02\x06\x07\x05"
  	"\x04\x03\x02\x07\x08\x07\x02\x02\x03\x08\x03\x03\x02\x02\x02\x09\x0a"
  	"\x08\x03\x01\x02\x0a\x0b\x07\x06\x02\x02\x0b\x0f\x05\x04\x03\x07\x0c"
  	"\x0f\x07\x09\x02\x02\x0d\x0f\x07\x08\x02\x02\x0e\x09\x03\x02\x02\x02"
  	"\x0e\x0c\x03\x02\x02\x02\x0e\x0d\x03\x02\x02\x02\x0f\x1e\x03\x02\x02"
  	"\x02\x10\x11\x0c\x06\x02\x02\x11\x12\x07\x07\x02\x02\x12\x1d\x05\x04"
  	"\x03\x07\x13\x14\x0c\x05\x02\x02\x14\x15\x09\x02\x02\x02\x15\x1d\x05"
  	"\x04\x03\x06\x16\x17\x0c\x09\x02\x02\x17\x18\x07\x04\x02\x02\x18\x1d"
  	"\x07\x08\x02\x02\x19\x1a\x0c\x08\x02\x02\x1a\x1b\x07\x04\x02\x02\x1b"
  	"\x1d\x07\x03\x02\x02\x1c\x10\x03\x02\x02\x02\x1c\x13\x03\x02\x02\x02"
  	"\x1c\x16\x03\x02\x02\x02\x1c\x19\x03\x02\x02\x02\x1d\x20\x03\x02\x02"
  	"\x02\x1e\x1c\x03\x02\x02\x02\x1e\x1f\x03\x02\x02\x02\x1f\x05\x03\x02"
  	"\x02\x02\x20\x1e\x03\x02\x02\x02\x05\x0e\x1c\x1e";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'this'", "'.'", "'+'", "'-'", "'*'", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "e"
  ];

  List log = new List();

  ExpressionsParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Expressions.g";
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
    int _la;
    try {
      int _alt;
      enterOuterAlt(localContext, 1);
      state = 12;
      switch (inputSource.lookAhead(1)) {
        case T__1: 
          state = 8; 
          match(T__1);
          state = 9; 
          e(5); 
          break;
        case INT: 
          state = 10; 
          match(INT); 
          break;
        case ID: 
          state = 11; 
          match(ID); 
          break;
        default: throw new NoViableAltException(this);
      }
      context.stop = inputSource.lookToken(-1);
      state = 28;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 2, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          state = 26;
          switch (interpreter.adaptivePredict(inputSource, 1, context)) {
            case 1:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 14;
              if (!(precedencePredicate(context, 4))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 4)");
              state = 15; 
              match(T__0);
              state = 16; 
              e(5);
              break;
            case 2:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 17;
              if (!(precedencePredicate(context, 3))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 3)");
              state = 18;
              _la = inputSource.lookAhead(1);
              if (!(_la == T__2 || _la == T__1)) {
                errorHandler.recoverInline(this);
              }
              consume();
              state = 19; 
              e(4);
              break;
            case 3:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 20;
              if (!(precedencePredicate(context, 7))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 7)");
              state = 21; 
              match(T__3);
              state = 22; 
              match(ID);
              break;
            case 4:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 23;
              if (!(precedencePredicate(context, 6))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 6)");
              state = 24; 
              match(T__3);
              state = 25; 
              match(T__4);
              break;
          } 
        }
        state = 30;
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
      case 2: return precedencePredicate(context, 7);
      case 3: return precedencePredicate(context, 6);
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ExpressionsParser.RULE_S;

  TerminalNode getEOF() => getToken(ExpressionsParser.EOF, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class EContext extends ParserRuleContext {

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ExpressionsParser.RULE_E;

  TerminalNode getINT() => getToken(ExpressionsParser.INT, 0);

  TerminalNode getID() => getToken(ExpressionsParser.ID, 0);

  EContext getE(int i) => getRuleContext((c) => c is EContext, i);

  List<EContext> getEs() => getRuleContexts((c) => c is EContext);
}

