// Generated from ListLabelOnSet.g by antlr4dart
part of list_label_on_set;

class ListLabelOnSetParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0, RULE_B = 1;

  static const int T__0 = 1, ID = 2, INT = 3, FLOAT = 4, WS = 5;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x07\x17\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x07\x02\x09\x0a\x02\x0c\x02\x0e\x02\x0c\x0b\x02\x03\x02\x03"
  	"\x02\x03\x03\x03\x03\x07\x03\x12\x0a\x03\x0c\x03\x0e\x03\x15\x0b\x03"
  	"\x03\x03\x02\x02\x04\x02\x04\x02\x03\x03\x02\x05\x06\x16\x02\x06\x03"
  	"\x02\x02\x02\x04\x0f\x03\x02\x02\x02\x06\x0a\x05\x04\x03\x02\x07\x09"
  	"\x05\x04\x03\x02\x08\x07\x03\x02\x02\x02\x09\x0c\x03\x02\x02\x02\x0a"
  	"\x08\x03\x02\x02\x02\x0a\x0b\x03\x02\x02\x02\x0b\x0d\x03\x02\x02\x02"
  	"\x0c\x0a\x03\x02\x02\x02\x0d\x0e\x07\x03\x02\x02\x0e\x03\x03\x02\x02"
  	"\x02\x0f\x13\x07\x04\x02\x02\x10\x12\x09\x02\x02\x02\x11\x10\x03\x02"
  	"\x02\x02\x12\x15\x03\x02\x02\x02\x13\x11\x03\x02\x02\x02\x13\x14\x03"
  	"\x02\x02\x02\x14\x05\x03\x02\x02\x02\x15\x13\x03\x02\x02\x02\x04\x0a"
  	"\x13";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "';'", "ID", "INT", "FLOAT", "WS"
  ];

  final List<String> ruleNames = [
    "a", "b"
  ];
  ListLabelOnSetParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "ListLabelOnSet.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      b();
      state = 8;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == ID) {
        state = 5; 
        b();
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
  BContext b() {
    var localContext = new BContext(context, state);
    enterRule(localContext, 2, RULE_B);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 13; 
      match(ID);
      state = 17;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == INT || _la == FLOAT) {
        state = 14;
        localContext.tset42 = inputSource.lookToken(1);
        _la = inputSource.lookAhead(1);
        if (!(_la == INT || _la == FLOAT)) {
          localContext.tset42 =   errorHandler.recoverInline(this);
        }
        consume();
        localContext.val.add(localContext.tset42);
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

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ListLabelOnSetParser.RULE_A;

  List<BContext> getBs() => getRuleContexts((c) => c is BContext);

  BContext getB(int i) => getRuleContext((c) => c is BContext, i);
}

class BContext extends ParserRuleContext {

  Token INT;
  List<Token> val = new List<Token>();
  Token FLOAT;
  Token tset42;

  BContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ListLabelOnSetParser.RULE_B;

  List<TerminalNode> getFLOATs() => getTokens(ListLabelOnSetParser.FLOAT);

  List<TerminalNode> getINTs() => getTokens(ListLabelOnSetParser.INT);

  TerminalNode getFLOAT(int i) => getToken(ListLabelOnSetParser.FLOAT, i);

  TerminalNode getID() => getToken(ListLabelOnSetParser.ID, 0);

  TerminalNode getINT(int i) => getToken(ListLabelOnSetParser.INT, i);
}

