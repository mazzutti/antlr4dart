// Generated from Trace.g by antlr4dart
part of trace;

class TraceParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0, RULE_B = 1, RULE_C = 2;

  static const int T__2 = 1, T__1 = 2, T__0 = 3, INT = 4, WS = 5;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x07\x1c\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x05\x02\x0e\x0a\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x07\x03\x15\x0a\x03\x0c\x03"
  	"\x0e\x03\x18\x0b\x03\x03\x04\x03\x04\x03\x04\x02\x02\x05\x02\x04\x06"
  	"\x02\x02\x1a\x02\x08\x03\x02\x02\x02\x04\x11\x03\x02\x02\x02\x06\x19"
  	"\x03\x02\x02\x02\x08\x0d\x07\x05\x02\x02\x09\x0a\x07\x06\x02\x02\x0a"
  	"\x0b\x07\x04\x02\x02\x0b\x0e\x05\x04\x03\x02\x0c\x0e\x05\x06\x04\x02"
  	"\x0d\x09\x03\x02\x02\x02\x0d\x0c\x03\x02\x02\x02\x0e\x0f\x03\x02\x02"
  	"\x02\x0f\x10\x07\x03\x02\x02\x10\x03\x03\x02\x02\x02\x11\x16\x05\x06"
  	"\x04\x02\x12\x13\x07\x04\x02\x02\x13\x15\x05\x06\x04\x02\x14\x12\x03"
  	"\x02\x02\x02\x15\x18\x03\x02\x02\x02\x16\x14\x03\x02\x02\x02\x16\x17"
  	"\x03\x02\x02\x02\x17\x05\x03\x02\x02\x02\x18\x16\x03\x02\x02\x02\x19"
  	"\x1a\x07\x06\x02\x02\x1a\x07\x03\x02\x02\x02\x04\x0d\x16";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'>'", "'+'", "'<'", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "a", "b", "c"
  ];
  TraceParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Trace.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    try {
      enterOuterAlt(localContext, 1);
      state = 6; 
      match(T__0);
      state = 11;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          state = 7; 
          match(INT);
          state = 8; 
          match(T__1);
          state = 9; 
          b();
          break;
        case 2:
          state = 10; 
          c();
          break;
      }
      state = 13; 
      match(T__2);
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
    enterRule(localContext, 2, RULE_B);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 15; 
      c();
      state = 20;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == T__1) {
        state = 16; 
        match(T__1);
        state = 17; 
        c();
        state = 22;
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
  CContext c() {
    var localContext = new CContext(context, state);
    enterRule(localContext, 4, RULE_C);
    try {
      enterOuterAlt(localContext, 1);
      state = 23; 
      match(INT);
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

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TraceParser.RULE_A;

  BContext getB() => getRuleContext((c) => c is BContext, 0);

  TerminalNode getINT() => getToken(TraceParser.INT, 0);

  CContext getC() => getRuleContext((c) => c is CContext, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is TraceListener) 
      listener.enterA(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TraceListener) 
      listener.exitA(this);
  }
}

class BContext extends ParserRuleContext {

  BContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TraceParser.RULE_B;

  CContext getC(int i) => getRuleContext((c) => c is CContext, i);

  List<CContext> getCs() => getRuleContexts((c) => c is CContext);

  void enterRule(ParseTreeListener listener) {
    if (listener is TraceListener) 
      listener.enterB(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TraceListener) 
      listener.exitB(this);
  }
}

class CContext extends ParserRuleContext {

  CContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TraceParser.RULE_C;

  TerminalNode getINT() => getToken(TraceParser.INT, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is TraceListener) 
      listener.enterC(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TraceListener) 
      listener.exitC(this);
  }
}

