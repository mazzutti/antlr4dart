// Generated from AOrB.g by antlr4dart
part of a_or_b;

class AOrBParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0;

  static const int ID = 1, INT = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x0b\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x03\x02\x05\x02\x09\x0a\x02\x03\x02\x02\x02\x03\x02\x02\x02\x0a\x02"
  	"\x08\x03\x02\x02\x02\x04\x05\x07\x03\x02\x02\x05\x09\x08\x02\x01\x02"
  	"\x06\x07\x07\x04\x02\x02\x07\x09\x08\x02\x01\x02\x08\x04\x03\x02\x02"
  	"\x02\x08\x06\x03\x02\x02\x02\x09\x03\x03\x02\x02\x02\x03\x08";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "a"
  ];

  List log = new List();

  AOrBParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "AOrB.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    try {
      state = 6;
      switch (inputSource.lookAhead(1)) {
        case ID: 
          enterOuterAlt(localContext, 1);
          state = 2; 
          match(ID);
          log.add("alt 1"); 
          break;
        case INT: 
          enterOuterAlt(localContext, 2);
          state = 4; 
          match(INT);
          log.add("alt 2"); 
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

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => AOrBParser.RULE_A;

  TerminalNode getINT() => getToken(AOrBParser.INT, 0);

  TerminalNode getID() => getToken(AOrBParser.ID, 0);
}

