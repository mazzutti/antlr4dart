// Generated from TokenLabel.g by antlr4dart
part of token_label;

class TokenLabelParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0;

  static const int A = 1, WS = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x08\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x03\x02\x02\x02\x03\x02\x02\x02\x06\x02\x04\x03\x02\x02\x02\x04\x05"
  	"\x07\x03\x02\x02\x05\x06\x08\x02\x01\x02\x06\x03\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "A", "WS"
  ];

  final List<String> ruleNames = [
    "a"
  ];
  List xlog = new List();

  TokenLabelParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "TokenLabel.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    try {
      enterOuterAlt(localContext, 1);
      state = 2; 
      localContext.t = match(A);
      xlog.add(localContext.t != null ? localContext.t.text : null);
      xlog.add(localContext.t != null ? localContext.t.type : 0);
      xlog.add(localContext.t != null ? localContext.t.line : 0);
      xlog.add(localContext.t != null ? localContext.t.charPositionInLine : 0);
      xlog.add(localContext.t != null ? localContext.t.channel : 0);
      xlog.add(localContext.t != null ? localContext.t.tokenIndex : 0);
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

  int get ruleIndex => TokenLabelParser.RULE_A;

  TerminalNode getA() => getToken(TokenLabelParser.A, 0);
}

