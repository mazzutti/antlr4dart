// Generated from LabelsOnOp.g by antlr4dart
part of labels_on_op;

class LabelsOnOpParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_E = 1;

  static const int T__3 = 1, T__2 = 2, T__1 = 3, T__0 = 4, INT = 5, WS = 6;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x08\x1d\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x05\x03\x11\x0a\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x07"
  	"\x03\x18\x0a\x03\x0c\x03\x0e\x03\x1b\x0b\x03\x03\x03\x02\x03\x04\x04"
  	"\x02\x04\x02\x03\x04\x02\x04\x04\x06\x06\x1c\x02\x06\x03\x02\x02\x02"
  	"\x04\x10\x03\x02\x02\x02\x06\x07\x05\x04\x03\x02\x07\x03\x03\x02\x02"
  	"\x02\x08\x09\x08\x03\x01\x02\x09\x0a\x07\x07\x02\x02\x0a\x11\x08\x03"
  	"\x01\x02\x0b\x0c\x07\x05\x02\x02\x0c\x0d\x05\x04\x03\x02\x0d\x0e\x07"
  	"\x03\x02\x02\x0e\x0f\x08\x03\x01\x02\x0f\x11\x03\x02\x02\x02\x10\x08"
  	"\x03\x02\x02\x02\x10\x0b\x03\x02\x02\x02\x11\x19\x03\x02\x02\x02\x12"
  	"\x13\x0c\x05\x02\x02\x13\x14\x09\x02\x02\x02\x14\x15\x05\x04\x03\x06"
  	"\x15\x16\x08\x03\x01\x02\x16\x18\x03\x02\x02\x02\x17\x12\x03\x02\x02"
  	"\x02\x18\x1b\x03\x02\x02\x02\x19\x17\x03\x02\x02\x02\x19\x1a\x03\x02"
  	"\x02\x02\x1a\x05\x03\x02\x02\x02\x1b\x19\x03\x02\x02\x02\x04\x10\x19";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "')'", "'*'", "'('", "'/'", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "e"
  ];

  List log = new List();

  LabelsOnOpParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "LabelsOnOp.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      e(0);
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
      state = 14;
      switch (inputSource.lookAhead(1)) {
        case INT: 
          state = 7; 
          match(INT);
       
          break;
        case T__1: 
          state = 9; 
          match(T__1);
          state = 10; 
          localContext.x = e(0);
          state = 11; 
          match(T__3);
       
          break;
        default: throw new NoViableAltException(this);
      }
      context.stop = inputSource.lookToken(-1);
      state = 23;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 1, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          localContext = new EContext(_parentctx, _parentState);
          localContext.a = _prevctx;
          pushNewRecursionContext(localContext, _startState, RULE_E);
          state = 16;
          if (!(precedencePredicate(context, 3))) 
            throw new FailedPredicateException(this, "precedencePredicate(context, 3)");
          state = 17;
          localContext.op = inputSource.lookToken(1);
          _la = inputSource.lookAhead(1);
          if (!(_la == T__2 || _la == T__0)) {
            localContext.op =   errorHandler.recoverInline(this);
          }
          consume();
          state = 18; 
          localContext.b = e(4);
       
        }
        state = 25;
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
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LabelsOnOpParser.RULE_S;

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class EContext extends ParserRuleContext {

  EContext a;
  EContext x;
  Token op;
  EContext b;

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LabelsOnOpParser.RULE_E;

  TerminalNode getINT() => getToken(LabelsOnOpParser.INT, 0);

  EContext getE(int i) => getRuleContext((c) => c is EContext, i);

  List<EContext> getEs() => getRuleContexts((c) => c is EContext);
}

