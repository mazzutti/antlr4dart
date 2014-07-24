// Generated from ParserNotToken2.g by antlr4dart
part of parser_not_token2;

class ParserNotToken2Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0;

  static const int T__1 = 1, T__0 = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x09\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x03\x02\x03\x02\x02\x02\x03\x02\x02\x03\x03\x02\x03\x03\x07\x02\x04"
  	"\x03\x02\x02\x02\x04\x05\x0a\x02\x02\x02\x05\x06\x07\x04\x02\x02\x06"
  	"\x07\x08\x02\x01\x02\x07\x03\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'x'", "'z'"
  ];

  final List<String> ruleNames = [
    "a"
  ];

  List log = new List();

  ParserNotToken2Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "ParserNotToken2.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 2;
      localContext.t = inputSource.lookToken(1);
      _la = inputSource.lookAhead(1);
      if (_la <= 0 || (_la == T__1)) {
        localContext.t =   errorHandler.recoverInline(this);
      }
      consume();
      state = 3; 
      match(T__0);
      log.add(localContext.t != null ? localContext.t.text : null);
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

  Token t;

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ParserNotToken2Parser.RULE_A;
}

