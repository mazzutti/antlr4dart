// Generated from ExprAmbiguity.g by antlr4dart
part of expr_ambiguity;

class ExprAmbiguityParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_EXPR = 1;

  static const int T__1 = 1, T__0 = 2, ID = 3, WS = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x16\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x07\x03\x11\x0a\x03\x0c\x03\x0e\x03\x14\x0b\x03\x03\x03\x02\x02"
  	"\x04\x02\x04\x02\x02\x15\x02\x06\x03\x02\x02\x02\x04\x09\x03\x02\x02"
  	"\x02\x06\x07\x05\x04\x03\x02\x07\x08\x08\x02\x01\x02\x08\x03\x03\x02"
  	"\x02\x02\x09\x12\x07\x05\x02\x02\x0a\x0b\x06\x03\x02\x03\x0b\x0c\x07"
  	"\x04\x02\x02\x0c\x11\x05\x04\x03\x02\x0d\x0e\x06\x03\x03\x03\x0e\x0f"
  	"\x07\x03\x02\x02\x0f\x11\x05\x04\x03\x02\x10\x0a\x03\x02\x02\x02\x10"
  	"\x0d\x03\x02\x02\x02\x11\x14\x03\x02\x02\x02\x12\x10\x03\x02\x02\x02"
  	"\x12\x13\x03\x02\x02\x02\x13\x05\x03\x02\x02\x02\x14\x12\x03\x02\x02"
  	"\x02\x04\x10\x12";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'+'", "'*'", "ID", "WS"
  ];

  final List<String> ruleNames = [
    "s", "expr"
  ];

  List log = new List();

  ExprAmbiguityParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "ExprAmbiguity.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    interpreter.predictionMode = PredictionMode.LL_EXACT_AMBIG_DETECTION;
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      localContext.expr = expr(0);
      log.add(localContext.expr.toString(this));
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  ExprContext expr(int _p) {
    var localContext = new ExprContext.args(context, state, _p);
    enterRule(localContext, 2, RULE_EXPR);
    try {
      var _alt;
      enterOuterAlt(localContext, 1);
      state = 7; 
      match(ID);
      state = 16;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 1, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 14;
          switch (interpreter.adaptivePredict(inputSource, 0, context)) {
            case 1:
              state = 8;
              if (!(5 >= localContext._p)) 
                throw new FailedPredicateException(this, "5 >= $_p");
              state = 9; 
              match(T__0);
              state = 10; 
              expr(6);
              break;
            case 2:
              state = 11;
              if (!(4 >= localContext._p)) 
                throw new FailedPredicateException(this, "4 >= $_p");
              state = 12; 
              match(T__1);
              state = 13; 
              expr(5);
              break;
          } 
        }
        state = 18;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 1, context);
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
      case 1: return _exprSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _exprSemanticPredicate(ExprContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return 5 >= localContext._p;
      case 1: return 4 >= localContext._p;
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  ExprContext expr;

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ExprAmbiguityParser.RULE_S;

  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);
}

class ExprContext extends ParserRuleContext {

  int _p;

  ExprContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  ExprContext.args(ParserRuleContext parent, int invokingState, this._p) : super(parent, invokingState);

  int get ruleIndex => ExprAmbiguityParser.RULE_EXPR;

  List<ExprContext> getExprs() => getRuleContexts((c) => c is ExprContext);

  ExprContext getExpr(int i) => getRuleContext((c) => c is ExprContext, i);

  TerminalNode getID() => getToken(ExprAmbiguityParser.ID, 0);
}

