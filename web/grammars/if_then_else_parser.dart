// Generated from IfThenElse.g by antlr4dart
part of if_then_else;

class IfThenElseParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_STAT = 1;

  static const int T__5 = 1, T__4 = 2, T__3 = 3, T__2 = 4, T__1 = 5, T__0 = 6, 
                   ID = 7, WS = 8;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x0a\x1b\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x07\x02\x09\x0a\x02\x0c\x02\x0e\x02\x0c\x0b\x02\x03\x02\x03"
  	"\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x05\x03\x16\x0a"
  	"\x03\x03\x03\x05\x03\x19\x0a\x03\x03\x03\x02\x02\x04\x02\x04\x02\x02"
  	"\x1b\x02\x06\x03\x02\x02\x02\x04\x18\x03\x02\x02\x02\x06\x0a\x07\x03"
  	"\x02\x02\x07\x09\x05\x04\x03\x02\x08\x07\x03\x02\x02\x02\x09\x0c\x03"
  	"\x02\x02\x02\x0a\x08\x03\x02\x02\x02\x0a\x0b\x03\x02\x02\x02\x0b\x0d"
  	"\x03\x02\x02\x02\x0c\x0a\x03\x02\x02\x02\x0d\x0e\x07\x08\x02\x02\x0e"
  	"\x03\x03\x02\x02\x02\x0f\x10\x07\x05\x02\x02\x10\x11\x07\x09\x02\x02"
  	"\x11\x12\x07\x04\x02\x02\x12\x15\x05\x04\x03\x02\x13\x14\x07\x06\x02"
  	"\x02\x14\x16\x07\x09\x02\x02\x15\x13\x03\x02\x02\x02\x15\x16\x03\x02"
  	"\x02\x02\x16\x19\x03\x02\x02\x02\x17\x19\x07\x07\x02\x02\x18\x0f\x03"
  	"\x02\x02\x02\x18\x17\x03\x02\x02\x02\x19\x05\x03\x02\x02\x02\x05\x0a"
  	"\x15\x18";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'{'", "'then'", "'if'", "'else'", "'return'", "'}'", "ID", 
    "WS"
  ];

  final List<String> ruleNames = [
    "s", "stat"
  ];
  IfThenElseParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "IfThenElse.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    interpreter.predictionMode = PredictionMode.LL_EXACT_AMBIG_DETECTION;
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      match(T__5);
      state = 8;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == T__3 || _la == T__1) {
        state = 5; 
        stat();
        state = 10;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 11; 
      match(T__0);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  StatContext stat() {
    var localContext = new StatContext(context, state);
    enterRule(localContext, 2, RULE_STAT);
    try {
      state = 22;
      switch (inputSource.lookAhead(1)) {
        case T__3: 
          enterOuterAlt(localContext, 1);
          state = 13; 
          match(T__3);
          state = 14; 
          match(ID);
          state = 15; 
          match(T__4);
          state = 16; 
          stat();
          state = 19;
          switch (interpreter.adaptivePredict(inputSource, 1, context)) {
            case 1:
              state = 17; 
              match(T__2);
              state = 18; 
              match(ID);
              break;
          } 
          break;
        case T__1: 
          enterOuterAlt(localContext, 2);
          state = 21; 
          match(T__1); 
          break;
        default: throw new NoViableAltException(this);
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

  int get ruleIndex => IfThenElseParser.RULE_S;

  StatContext getStat(int i) => getRuleContext((c) => c is StatContext, i);

  List<StatContext> getStats() => getRuleContexts((c) => c is StatContext);
}

class StatContext extends ParserRuleContext {

  StatContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => IfThenElseParser.RULE_STAT;

  List<TerminalNode> getIDs() => getTokens(IfThenElseParser.ID);

  StatContext getStat() => getRuleContext((c) => c is StatContext, 0);

  TerminalNode getID(int i) => getToken(IfThenElseParser.ID, i);
}

