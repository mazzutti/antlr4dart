// Generated from AmbiguityNoLoop.g by antlr4dart
part of ambiguity_no_loop;

class AmbiguityNoLoopParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_PROG = 0, RULE_EXPR = 1;

  static const int T__0 = 1, ID = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x14\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x02\x03\x02\x05\x02\x0c\x0a\x02\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x05\x03\x12\x0a\x03\x03\x03\x02\x02\x04\x02\x04\x02"
  	"\x02\x14\x02\x0b\x03\x02\x02\x02\x04\x11\x03\x02\x02\x02\x06\x07\x05"
  	"\x04\x03\x02\x07\x08\x05\x04\x03\x02\x08\x09\x08\x02\x01\x02\x09\x0c"
  	"\x03\x02\x02\x02\x0a\x0c\x05\x04\x03\x02\x0b\x06\x03\x02\x02\x02\x0b"
  	"\x0a\x03\x02\x02\x02\x0c\x03\x03\x02\x02\x02\x0d\x12\x07\x03\x02\x02"
  	"\x0e\x0f\x07\x04\x02\x02\x0f\x12\x07\x03\x02\x02\x10\x12\x07\x04\x02"
  	"\x02\x11\x0d\x03\x02\x02\x02\x11\x0e\x03\x02\x02\x02\x11\x10\x03\x02"
  	"\x02\x02\x12\x05\x03\x02\x02\x02\x04\x0b\x11";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'@'", "ID", "WS"
  ];

  final List<String> ruleNames = [
    "prog", "expr"
  ];

  List log = new List();

  AmbiguityNoLoopParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "AmbiguityNoLoop.g";
  ProgContext prog() {
    var localContext = new ProgContext(context, state);
    enterRule(localContext, 0, RULE_PROG);
    interpreter.predictionMode = PredictionMode.LL_EXACT_AMBIG_DETECTION;
    try {
      state = 9;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 4; 
          expr();
          state = 5; 
          expr();
          log.add("alt 1");
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 8; 
          expr();
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
    enterRule(localContext, 2, RULE_EXPR);
    try {
      state = 15;
      switch (interpreter.adaptivePredict(inputSource, 1, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 11; 
          match(T__0);
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 12; 
          match(ID);
          state = 13; 
          match(T__0);
          break;
        case 3:
          enterOuterAlt(localContext, 3);
          state = 14; 
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

  int get ruleIndex => AmbiguityNoLoopParser.RULE_PROG;

  List<ExprContext> getExprs() => getRuleContexts((c) => c is ExprContext);

  ExprContext getExpr(int i) => getRuleContext((c) => c is ExprContext, i);
}

class ExprContext extends ParserRuleContext {

  ExprContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => AmbiguityNoLoopParser.RULE_EXPR;

  TerminalNode getID() => getToken(AmbiguityNoLoopParser.ID, 0);
}

