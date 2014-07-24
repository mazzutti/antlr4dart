// Generated from ImpLexer.g by antlr4dart
part of imp_lexer;

class ImpLexerParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_PROGRAM = 0;

  static const int T__0 = 1, WS = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x08\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x03\x02\x02\x02\x03\x02\x02\x02\x06\x02\x04\x03\x02\x02\x02\x04\x05"
  	"\x07\x03\x02\x02\x05\x06\x07\x03\x02\x02\x06\x03\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'test'", "WS"
  ];

  final List<String> ruleNames = [
    "program"
  ];
  ImpLexerParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "ImpLexer.g";
  ProgramContext program() {
    var localContext = new ProgramContext(context, state);
    enterRule(localContext, 0, RULE_PROGRAM);
    try {
      enterOuterAlt(localContext, 1);
      state = 2; 
      match(T__0);
      state = 3; 
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
}

class ProgramContext extends ParserRuleContext {

  ProgramContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ImpLexerParser.RULE_PROGRAM;
}

