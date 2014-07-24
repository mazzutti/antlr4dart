// Generated from AmbigYields.g by antlr4dart
part of ambig_yields;

class AmbigYieldsParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0;

  static const int ID = 1, WS = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x0a\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x05\x02\x08\x0a\x02\x03\x02\x02\x02\x03\x02\x02\x02\x09\x02\x07\x03"
  	"\x02\x02\x02\x04\x08\x07\x03\x02\x02\x05\x06\x07\x03\x02\x02\x06\x08"
  	"\x08\x02\x01\x02\x07\x04\x03\x02\x02\x02\x07\x05\x03\x02\x02\x02\x08"
  	"\x03\x03\x02\x02\x02\x03\x07";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "ID", "WS"
  ];

  final List<String> ruleNames = [
    "s"
  ];
  AmbigYieldsParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "AmbigYields.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      state = 5;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 2; 
          match(ID);
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 3; 
          match(ID);
          ;
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

  int get ruleIndex => AmbigYieldsParser.RULE_S;

  TerminalNode getID() => getToken(AmbigYieldsParser.ID, 0);
}

