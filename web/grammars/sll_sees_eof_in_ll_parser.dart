// Generated from SLLSeesEOFInLL.g by antlr4dart
part of sll_sees_eof_in_ll;

class SLLSeesEOFInLLParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1, RULE_B = 2, RULE_E = 3;

  static const int ID = 1, INT = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x18\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x04\x05\x09\x05\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03"
  	"\x04\x03\x04\x03\x04\x03\x04\x03\x05\x03\x05\x05\x05\x16\x0a\x05\x03"
  	"\x05\x02\x02\x06\x02\x04\x06\x08\x02\x02\x14\x02\x0a\x03\x02\x02\x02"
  	"\x04\x0c\x03\x02\x02\x02\x06\x0f\x03\x02\x02\x02\x08\x15\x03\x02\x02"
  	"\x02\x0a\x0b\x05\x04\x03\x02\x0b\x03\x03\x02\x02\x02\x0c\x0d\x05\x08"
  	"\x05\x02\x0d\x0e\x07\x03\x02\x02\x0e\x05\x03\x02\x02\x02\x0f\x10\x05"
  	"\x08\x05\x02\x10\x11\x07\x04\x02\x02\x11\x12\x07\x03\x02\x02\x12\x07"
  	"\x03\x02\x02\x02\x13\x16\x07\x04\x02\x02\x14\x16\x03\x02\x02\x02\x15"
  	"\x13\x03\x02\x02\x02\x15\x14\x03\x02\x02\x02\x16\x09\x03\x02\x02\x02"
  	"\x03\x15";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a", "b", "e"
  ];
  SLLSeesEOFInLLParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "SLLSeesEOFInLL.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 8; 
      a();
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
      enterOuterAlt(localContext, 1);
      state = 10; 
      e();
      state = 11; 
      match(ID);
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
    try {
      enterOuterAlt(localContext, 1);
      state = 13; 
      e();
      state = 14; 
      match(INT);
      state = 15; 
      match(ID);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  EContext e() {
    var localContext = new EContext(context, state);
    enterRule(localContext, 6, RULE_E);
    try {
      state = 19;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 17; 
          match(INT);
          break;
        case 2:
          enterOuterAlt(localContext, 2);

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

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SLLSeesEOFInLLParser.RULE_S;

  AContext getA() => getRuleContext((c) => c is AContext, 0);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SLLSeesEOFInLLParser.RULE_A;

  TerminalNode getID() => getToken(SLLSeesEOFInLLParser.ID, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class BContext extends ParserRuleContext {

  BContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SLLSeesEOFInLLParser.RULE_B;

  TerminalNode getINT() => getToken(SLLSeesEOFInLLParser.INT, 0);

  TerminalNode getID() => getToken(SLLSeesEOFInLLParser.ID, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class EContext extends ParserRuleContext {

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SLLSeesEOFInLLParser.RULE_E;

  TerminalNode getINT() => getToken(SLLSeesEOFInLLParser.INT, 0);
}

