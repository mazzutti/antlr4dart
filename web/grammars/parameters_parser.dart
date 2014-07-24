// Generated from Parameters.g by antlr4dart
part of parameters;

class ParametersParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0;

  static const int A = 1, WS = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x0d\x04\x02\x09\x02\x03\x02\x06\x02\x06\x0a"
  	"\x02\x0d\x02\x0e\x02\x07\x03\x02\x03\x02\x03\x02\x03\x02\x02\x02\x03"
  	"\x02\x02\x02\x0c\x02\x05\x03\x02\x02\x02\x04\x06\x07\x03\x02\x02\x05"
  	"\x04\x03\x02\x02\x02\x06\x07\x03\x02\x02\x02\x07\x05\x03\x02\x02\x02"
  	"\x07\x08\x03\x02\x02\x02\x08\x09\x03\x02\x02\x02\x09\x0a\x07\x02\x02"
  	"\x03\x0a\x0b\x08\x02\x01\x02\x0b\x03\x03\x02\x02\x02\x03\x07";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "A", "WS"
  ];

  final List<String> ruleNames = [
    "a"
  ];
  ParametersParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Parameters.g";
  AContext a(dynamic arg1, dynamic arg2) {
    var localContext = new AContext.args(context, state, arg1, arg2);
    enterRule(localContext, 0, RULE_A);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 3; 
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      do {
        state = 2; 
        match(A);
        state = 5; 
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      } while (_la == A);
      state = 7; 
      match(EOF);
      localContext.l =  [localContext.arg1, localContext.arg2];
      localContext.arg1 =  "gnarz";
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

  dynamic arg1;
  dynamic arg2;
  List l;

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  AContext.args(ParserRuleContext parent, int invokingState, this.arg1, this.arg2) : super(parent, invokingState);

  int get ruleIndex => ParametersParser.RULE_A;

  TerminalNode getEOF() => getToken(ParametersParser.EOF, 0);

  TerminalNode getA(int i) => getToken(ParametersParser.A, i);

  List<TerminalNode> getAs() => getTokens(ParametersParser.A);
}

