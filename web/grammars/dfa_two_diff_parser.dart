// Generated from DFATwoDiff.g by antlr4dart
part of dfa_two_diff;

class DFATwoDiffParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1, RULE_B = 2, RULE_E = 3;

  static const int T__1 = 1, T__0 = 2, ID = 3, INT = 4, WS = 5;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x07\x1e\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x04\x05\x09\x05\x03\x02\x03\x02\x03\x02\x03\x02\x06\x02\x0f"
  	"\x0a\x02\x0d\x02\x0e\x02\x10\x03\x03\x03\x03\x03\x03\x03\x04\x03\x04"
  	"\x03\x04\x03\x04\x03\x05\x03\x05\x05\x05\x1c\x0a\x05\x03\x05\x02\x02"
  	"\x06\x02\x04\x06\x08\x02\x02\x1c\x02\x0e\x03\x02\x02\x02\x04\x12\x03"
  	"\x02\x02\x02\x06\x15\x03\x02\x02\x02\x08\x1b\x03\x02\x02\x02\x0a\x0b"
  	"\x07\x04\x02\x02\x0b\x0f\x05\x04\x03\x02\x0c\x0d\x07\x03\x02\x02\x0d"
  	"\x0f\x05\x06\x04\x02\x0e\x0a\x03\x02\x02\x02\x0e\x0c\x03\x02\x02\x02"
  	"\x0f\x10\x03\x02\x02\x02\x10\x0e\x03\x02\x02\x02\x10\x11\x03\x02\x02"
  	"\x02\x11\x03\x03\x02\x02\x02\x12\x13\x05\x08\x05\x02\x13\x14\x07\x05"
  	"\x02\x02\x14\x05\x03\x02\x02\x02\x15\x16\x05\x08\x05\x02\x16\x17\x07"
  	"\x06\x02\x02\x17\x18\x07\x05\x02\x02\x18\x07\x03\x02\x02\x02\x19\x1c"
  	"\x07\x06\x02\x02\x1a\x1c\x03\x02\x02\x02\x1b\x19\x03\x02\x02\x02\x1b"
  	"\x1a\x03\x02\x02\x02\x1c\x09\x03\x02\x02\x02\x05\x0e\x10\x1b";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'@'", "'\$'", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a", "b", "e"
  ];
  DFATwoDiffParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "DFATwoDiff.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 12; 
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      do {
        state = 12;
        switch (inputSource.lookAhead(1)) {
          case T__0: 
            state = 8; 
            match(T__0);
            state = 9; 
            a(); 
            break;
          case T__1: 
            state = 10; 
            match(T__1);
            state = 11; 
            b(); 
            break;
          default: throw new NoViableAltException(this);
        }
        state = 14; 
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      } while (_la == T__1 || _la == T__0);
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
      state = 16; 
      e();
      state = 17; 
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
      state = 19; 
      e();
      state = 20; 
      match(INT);
      state = 21; 
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
      state = 25;
      switch (interpreter.adaptivePredict(inputSource, 2, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 23; 
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

  int get ruleIndex => DFATwoDiffParser.RULE_S;

  List<BContext> getBs() => getRuleContexts((c) => c is BContext);

  AContext getA(int i) => getRuleContext((c) => c is AContext, i);

  BContext getB(int i) => getRuleContext((c) => c is BContext, i);

  List<AContext> getAs() => getRuleContexts((c) => c is AContext);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => DFATwoDiffParser.RULE_A;

  TerminalNode getID() => getToken(DFATwoDiffParser.ID, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class BContext extends ParserRuleContext {

  BContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => DFATwoDiffParser.RULE_B;

  TerminalNode getINT() => getToken(DFATwoDiffParser.INT, 0);

  TerminalNode getID() => getToken(DFATwoDiffParser.ID, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class EContext extends ParserRuleContext {

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => DFATwoDiffParser.RULE_E;

  TerminalNode getINT() => getToken(DFATwoDiffParser.INT, 0);
}

