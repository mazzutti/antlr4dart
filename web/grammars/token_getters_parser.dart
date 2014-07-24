// Generated from TokenGetters.g by antlr4dart
part of token_getters;

class TokenGettersParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1;

  static const int MULT = 1, ADD = 2, INT = 3, ID = 4, WS = 5;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x07\x0e\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x03\x03\x03\x03\x03\x05\x03\x0c\x0a\x03\x03\x03\x02\x02"
  	"\x04\x02\x04\x02\x02\x0c\x02\x06\x03\x02\x02\x02\x04\x0b\x03\x02\x02"
  	"\x02\x06\x07\x05\x04\x03\x02\x07\x03\x03\x02\x02\x02\x08\x09\x07\x05"
  	"\x02\x02\x09\x0c\x07\x05\x02\x02\x0a\x0c\x07\x06\x02\x02\x0b\x08\x03"
  	"\x02\x02\x02\x0b\x0a\x03\x02\x02\x02\x0c\x05\x03\x02\x02\x02\x03\x0b";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'*'", "'+'", "INT", "ID", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a"
  ];

  List log = new List();

  TokenGettersParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "TokenGetters.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
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
      state = 9;
      switch (inputSource.lookAhead(1)) {
        case INT: 
          enterOuterAlt(localContext, 1);
          state = 6; 
          match(INT);
          state = 7; 
          match(INT); 
          break;
        case ID: 
          enterOuterAlt(localContext, 2);
          state = 8; 
          match(ID); 
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

  AContext r;

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TokenGettersParser.RULE_S;

  AContext getA() => getRuleContext((c) => c is AContext, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is TokenGettersListener) 
      listener.enterS(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TokenGettersListener) 
      listener.exitS(this);
  }
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TokenGettersParser.RULE_A;

  List<TerminalNode> getINTs() => getTokens(TokenGettersParser.INT);

  TerminalNode getID() => getToken(TokenGettersParser.ID, 0);

  TerminalNode getINT(int i) => getToken(TokenGettersParser.INT, i);

  void enterRule(ParseTreeListener listener) {
    if (listener is TokenGettersListener) 
      listener.enterA(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TokenGettersListener) 
      listener.exitA(this);
  }
}

