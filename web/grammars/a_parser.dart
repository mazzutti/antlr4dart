// Generated from AParser.g by antlr4dart
part of parser_interpreter_test;

class AParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_SA = 0;

  static const int A = 1;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x03\x07\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x02\x02\x03\x02\x02\x02\x05\x02\x04\x03\x02\x02\x02\x04\x05\x07\x03"
  	"\x02\x02\x05\x03\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "A"
  ];

  final List<String> ruleNames = [
    "sa"
  ];
  AParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "AParser.g";
  SaContext sa() {
    var localContext = new SaContext(context, state);
    enterRule(localContext, 0, RULE_SA);
    try {
      enterOuterAlt(localContext, 1);
      state = 2; 
      match(A);
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

class SaContext extends ParserRuleContext {

  SaContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => AParser.RULE_SA;

  TerminalNode getA() => getToken(AParser.A, 0);
}

