// Generated from SimulateTail.g by antlr4dart
part of simulate_tail;

class SimulateTailParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_PROG = 0, RULE_EXPR_OR_ASSIGN = 1, RULE_EXPR = 2, 
                   RULE_EXPR_PRIMARY = 3;

  static const int T__3 = 1, T__2 = 2, T__1 = 3, T__0 = 4, ID = 5;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x07\x29\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x04\x05\x09\x05\x03\x02\x07\x02\x0c\x0a\x02\x0c\x02\x0e\x02"
  	"\x0f\x0b\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x05\x03\x18\x0a\x03\x03\x04\x03\x04\x03\x04\x05\x04\x1d\x0a\x04\x03"
  	"\x05\x03\x05\x03\x05\x03\x05\x03\x05\x03\x05\x03\x05\x03\x05\x05\x05"
  	"\x27\x0a\x05\x03\x05\x02\x02\x06\x02\x04\x06\x08\x02\x02\x29\x02\x0d"
  	"\x03\x02\x02\x02\x04\x17\x03\x02\x02\x02\x06\x19\x03\x02\x02\x02\x08"
  	"\x26\x03\x02\x02\x02\x0a\x0c\x05\x04\x03\x02\x0b\x0a\x03\x02\x02\x02"
  	"\x0c\x0f\x03\x02\x02\x02\x0d\x0b\x03\x02\x02\x02\x0d\x0e\x03\x02\x02"
  	"\x02\x0e\x03\x03\x02\x02\x02\x0f\x0d\x03\x02\x02\x02\x10\x11\x05\x06"
  	"\x04\x02\x11\x12\x07\x06\x02\x02\x12\x13\x08\x03\x01\x02\x13\x18\x03"
  	"\x02\x02\x02\x14\x15\x05\x06\x04\x02\x15\x16\x08\x03\x01\x02\x16\x18"
  	"\x03\x02\x02\x02\x17\x10\x03\x02\x02\x02\x17\x14\x03\x02\x02\x02\x18"
  	"\x05\x03\x02\x02\x02\x19\x1c\x05\x08\x05\x02\x1a\x1b\x07\x05\x02\x02"
  	"\x1b\x1d\x07\x07\x02\x02\x1c\x1a\x03\x02\x02\x02\x1c\x1d\x03\x02\x02"
  	"\x02\x1d\x07\x03\x02\x02\x02\x1e\x1f\x07\x04\x02\x02\x1f\x20\x07\x07"
  	"\x02\x02\x20\x27\x07\x03\x02\x02\x21\x22\x07\x07\x02\x02\x22\x23\x07"
  	"\x04\x02\x02\x23\x24\x07\x07\x02\x02\x24\x27\x07\x03\x02\x02\x25\x27"
  	"\x07\x07\x02\x02\x26\x1e\x03\x02\x02\x02\x26\x21\x03\x02\x02\x02\x26"
  	"\x25\x03\x02\x02\x02\x27\x09\x03\x02\x02\x02\x06\x0d\x17\x1c\x26";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "')'", "'('", "'<-'", "'++'", "ID"
  ];

  final List<String> ruleNames = [
    "prog", "expr_or_assign", "expr", "expr_primary"
  ];

  List log = new List();

  SimulateTailParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "SimulateTail.g";
  ProgContext prog() {
    var localContext = new ProgContext(context, state);
    enterRule(localContext, 0, RULE_PROG);
    interpreter.predictionMode = PredictionMode.LL_EXACT_AMBIG_DETECTION;
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 11;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == T__2 || _la == ID) {
        state = 8; 
        expr_or_assign();
        state = 13;
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
  Expr_or_assignContext expr_or_assign() {
    var localContext = new Expr_or_assignContext(context, state);
    enterRule(localContext, 2, RULE_EXPR_OR_ASSIGN);
    try {
      state = 21;
      switch (interpreter.adaptivePredict(inputSource, 1, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 14; 
          expr();
          state = 15; 
          match(T__0);
          log.add("fail.");
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 18; 
          localContext.expr = expr();
          log.add("pass: ${localContext.expr != null ? inputSource.getText(localContext.expr.start,localContext.expr.stop) : null}");
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
  ExprContext expr() {
    var localContext = new ExprContext(context, state);
    enterRule(localContext, 4, RULE_EXPR);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 23; 
      expr_primary();
      state = 26;
      _la = inputSource.lookAhead(1);
      if (_la == T__1) {
        state = 24; 
        match(T__1);
        state = 25; 
        match(ID);
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
  Expr_primaryContext expr_primary() {
    var localContext = new Expr_primaryContext(context, state);
    enterRule(localContext, 6, RULE_EXPR_PRIMARY);
    try {
      state = 36;
      switch (interpreter.adaptivePredict(inputSource, 3, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 28; 
          match(T__2);
          state = 29; 
          match(ID);
          state = 30; 
          match(T__3);
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 31; 
          match(ID);
          state = 32; 
          match(T__2);
          state = 33; 
          match(ID);
          state = 34; 
          match(T__3);
          break;
        case 3:
          enterOuterAlt(localContext, 3);
          state = 35; 
          match(ID);
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
}

class ProgContext extends ParserRuleContext {

  ProgContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SimulateTailParser.RULE_PROG;

  List<Expr_or_assignContext> getExpr_or_assigns() => getRuleContexts((c) => c is Expr_or_assignContext);

  Expr_or_assignContext getExpr_or_assign(int i) => getRuleContext((c) => c is Expr_or_assignContext, i);
}

class Expr_or_assignContext extends ParserRuleContext {

  ExprContext expr;

  Expr_or_assignContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SimulateTailParser.RULE_EXPR_OR_ASSIGN;

  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);
}

class ExprContext extends ParserRuleContext {

  ExprContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SimulateTailParser.RULE_EXPR;

  Expr_primaryContext getExpr_primary() => getRuleContext((c) => c is Expr_primaryContext, 0);

  TerminalNode getID() => getToken(SimulateTailParser.ID, 0);
}

class Expr_primaryContext extends ParserRuleContext {

  Expr_primaryContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SimulateTailParser.RULE_EXPR_PRIMARY;

  List<TerminalNode> getIDs() => getTokens(SimulateTailParser.ID);

  TerminalNode getID(int i) => getToken(SimulateTailParser.ID, i);
}

