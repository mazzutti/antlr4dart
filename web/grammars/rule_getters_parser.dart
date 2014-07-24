// Generated from RuleGetters.g by antlr4dart
part of rule_getters;

class RuleGettersParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1, RULE_B = 2;

  static const int MULT = 1, ADD = 2, INT = 3, ID = 4, WS = 5;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x07\x13\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x05\x03\x0f"
  	"\x0a\x03\x03\x04\x03\x04\x03\x04\x02\x02\x05\x02\x04\x06\x02\x03\x03"
  	"\x02\x05\x06\x10\x02\x08\x03\x02\x02\x02\x04\x0e\x03\x02\x02\x02\x06"
  	"\x10\x03\x02\x02\x02\x08\x09\x05\x04\x03\x02\x09\x03\x03\x02\x02\x02"
  	"\x0a\x0b\x05\x06\x04\x02\x0b\x0c\x05\x06\x04\x02\x0c\x0f\x03\x02\x02"
  	"\x02\x0d\x0f\x05\x06\x04\x02\x0e\x0a\x03\x02\x02\x02\x0e\x0d\x03\x02"
  	"\x02\x02\x0f\x05\x03\x02\x02\x02\x10\x11\x09\x02\x02\x02\x11\x07\x03"
  	"\x02\x02\x02\x03\x0e";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'*'", "'+'", "INT", "ID", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a", "b"
  ];

  List log = new List();

  RuleGettersParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "RuleGetters.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 6; 
      localContext.r = a();
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
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 2, RULE_A);
    try {
      state = 12;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 8; 
          b();
          state = 9; 
          b();
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 11; 
          b();
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
  BContext b() {
    var localContext = new BContext(context, state);
    enterRule(localContext, 4, RULE_B);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 14;
      _la = inputSource.lookAhead(1);
      if (!(_la == INT || _la == ID)) {
        errorHandler.recoverInline(this);
      }
      consume();
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

class SContext extends ParserRuleContext {

  AContext r;

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => RuleGettersParser.RULE_S;

  AContext getA() => getRuleContext((c) => c is AContext, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is RuleGettersListener) 
      listener.enterS(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is RuleGettersListener) 
      listener.exitS(this);
  }
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => RuleGettersParser.RULE_A;

  List<BContext> getBs() => getRuleContexts((c) => c is BContext);

  BContext getB(int i) => getRuleContext((c) => c is BContext, i);

  void enterRule(ParseTreeListener listener) {
    if (listener is RuleGettersListener) 
      listener.enterA(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is RuleGettersListener) 
      listener.exitA(this);
  }
}

class BContext extends ParserRuleContext {

  BContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => RuleGettersParser.RULE_B;

  TerminalNode getINT() => getToken(RuleGettersParser.INT, 0);

  TerminalNode getID() => getToken(RuleGettersParser.ID, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is RuleGettersListener) 
      listener.enterB(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is RuleGettersListener) 
      listener.exitB(this);
  }
}

