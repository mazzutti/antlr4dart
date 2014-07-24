// Generated from CharSetLiteral.g by antlr4dart
part of char_set_literal;

class CharSetLiteralParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0;

  static const int A = 1, WS = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x0b\x04\x02\x09\x02\x03\x02\x03\x02\x06\x02"
  	"\x07\x0a\x02\x0d\x02\x0e\x02\x08\x03\x02\x02\x02\x03\x02\x02\x02\x0a"
  	"\x02\x06\x03\x02\x02\x02\x04\x05\x07\x03\x02\x02\x05\x07\x08\x02\x01"
  	"\x02\x06\x04\x03\x02\x02\x02\x07\x08\x03\x02\x02\x02\x08\x06\x03\x02"
  	"\x02\x02\x08\x09\x03\x02\x02\x02\x09\x03\x03\x02\x02\x02\x03\x08";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "A", "WS"
  ];

  final List<String> ruleNames = [
    "a"
  ];

  List log = new List();

  CharSetLiteralParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "CharSetLiteral.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      do {
        state = 2; 
        localContext.A = match(A);
        log.add(localContext.A != null ? localContext.A.text : null);
        state = 6; 
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      } while (_la == A);
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

  Token A;

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => CharSetLiteralParser.RULE_A;

  TerminalNode getA(int i) => getToken(CharSetLiteralParser.A, i);

  List<TerminalNode> getAs() => getTokens(CharSetLiteralParser.A);
}

