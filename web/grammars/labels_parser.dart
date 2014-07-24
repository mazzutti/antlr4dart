// Generated from Labels.g by antlr4dart
part of labels;

class LabelsParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0, RULE_B = 1;

  static const int T__0 = 1, ID = 2, INT = 3, WS = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x17\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x07\x02\x09\x0a\x02\x0c\x02\x0e\x02\x0c\x0b\x02\x03\x02\x03"
  	"\x02\x03\x03\x03\x03\x07\x03\x12\x0a\x03\x0c\x03\x0e\x03\x15\x0b\x03"
  	"\x03\x03\x02\x02\x04\x02\x04\x02\x02\x16\x02\x06\x03\x02\x02\x02\x04"
  	"\x0f\x03\x02\x02\x02\x06\x0a\x05\x04\x03\x02\x07\x09\x05\x04\x03\x02"
  	"\x08\x07\x03\x02\x02\x02\x09\x0c\x03\x02\x02\x02\x0a\x08\x03\x02\x02"
  	"\x02\x0a\x0b\x03\x02\x02\x02\x0b\x0d\x03\x02\x02\x02\x0c\x0a\x03\x02"
  	"\x02\x02\x0d\x0e\x07\x03\x02\x02\x0e\x03\x03\x02\x02\x02\x0f\x13\x07"
  	"\x04\x02\x02\x10\x12\x07\x05\x02\x02\x11\x10\x03\x02\x02\x02\x12\x15"
  	"\x03\x02\x02\x02\x13\x11\x03\x02\x02\x02\x13\x14\x03\x02\x02\x02\x14"
  	"\x05\x03\x02\x02\x02\x15\x13\x03\x02\x02\x02\x04\x0a\x13";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "';'", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "a", "b"
  ];
  LabelsParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Labels.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      localContext.b1 = b();
      state = 8;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == ID) {
        state = 5; 
        localContext.b = b();
        localContext.b2.add(localContext.b);
        state = 10;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 11; 
      localContext.s1 = match(T__0);
      localContext.b3.add(localContext.s1);
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
      state = 13; 
      localContext.id = match(ID);
      state = 17;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == INT) {
        state = 14; 
        localContext.INT = match(INT);
        localContext.val.add(localContext.INT);
        state = 19;
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
}

class AContext extends ParserRuleContext {

  BContext b1;
  BContext b;
  List<BContext> b2 = new List<BContext>();
  Token s1;
  List<Token> b3 = new List<Token>();

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LabelsParser.RULE_A;

  List<BContext> getBs() => getRuleContexts((c) => c is BContext);

  BContext getB(int i) => getRuleContext((c) => c is BContext, i);
}

class BContext extends ParserRuleContext {

  Token id;
  Token INT;
  List<Token> val = new List<Token>();

  BContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LabelsParser.RULE_B;

  List<TerminalNode> getINTs() => getTokens(LabelsParser.INT);

  TerminalNode getID() => getToken(LabelsParser.ID, 0);

  TerminalNode getINT(int i) => getToken(LabelsParser.INT, i);
}

