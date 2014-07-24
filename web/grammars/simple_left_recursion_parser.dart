// Generated from SimpleLeftRecursion.g by antlr4dart
part of simple_left_recursion;

class SimpleLeftRecursionParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1;

  static const int ID = 1, WS = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x13\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x07\x03\x0e\x0a\x03"
  	"\x0c\x03\x0e\x03\x11\x0b\x03\x03\x03\x02\x03\x04\x04\x02\x04\x02\x02"
  	"\x11\x02\x06\x03\x02\x02\x02\x04\x08\x03\x02\x02\x02\x06\x07\x05\x04"
  	"\x03\x02\x07\x03\x03\x02\x02\x02\x08\x09\x08\x03\x01\x02\x09\x0a\x07"
  	"\x03\x02\x02\x0a\x0f\x03\x02\x02\x02\x0b\x0c\x0c\x04\x02\x02\x0c\x0e"
  	"\x07\x03\x02\x02\x0d\x0b\x03\x02\x02\x02\x0e\x11\x03\x02\x02\x02\x0f"
  	"\x0d\x03\x02\x02\x02\x0f\x10\x03\x02\x02\x02\x10\x05\x03\x02\x02\x02"
  	"\x11\x0f\x03\x02\x02\x02\x03\x0f";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "ID", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a"
  ];

  List log = new List();

  SimpleLeftRecursionParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "SimpleLeftRecursion.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      a(0);
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
  AContext a([int _p = 0]) {
    var _parentctx = context;
    int _parentState = state;
    var localContext = new AContext(context, _parentState);
    var _prevctx = localContext;
    int _startState = 2;
    enterRecursionRule(localContext, 2, RULE_A, _p);
    try {
      int _alt;
      enterOuterAlt(localContext, 1);
      state = 7; 
      match(ID);
      context.stop = inputSource.lookToken(-1);
      state = 13;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 0, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          localContext = new AContext(_parentctx, _parentState);
          pushNewRecursionContext(localContext, _startState, RULE_A);
          state = 9;
          if (!(precedencePredicate(context, 2))) 
            throw new FailedPredicateException(this, "precedencePredicate(context, 2)");
          state = 10; 
          match(ID); 
        }
        state = 15;
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

  bool semanticPredicate(RuleContext localContext, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 1: return _aSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _aSemanticPredicate(AContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return precedencePredicate(context, 2);
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SimpleLeftRecursionParser.RULE_S;

  AContext getA() => getRuleContext((c) => c is AContext, 0);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SimpleLeftRecursionParser.RULE_A;

  TerminalNode getID() => getToken(SimpleLeftRecursionParser.ID, 0);

  AContext getA() => getRuleContext((c) => c is AContext, 0);
}

