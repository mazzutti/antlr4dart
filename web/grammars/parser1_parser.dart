// Generated from Parser1.g by antlr4dart
part of parser1;

class Parser1Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_DOCUMENT = 0;

  static const int IDENTIFIER = 1;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x03\x08\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x03\x02\x02\x02\x03\x02\x02\x02\x06\x02\x04\x03\x02\x02\x02\x04\x05"
  	"\x07\x03\x02\x02\x05\x06\x08\x02\x01\x02\x06\x03\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "IDENTIFIER"
  ];

  final List<String> ruleNames = [
    "document"
  ];

  List identifiers = new List();

  List reportedErrors = new List();

  void foundIdentifier(String name) {
    identifiers.add(name);
  }

  void emitErrorMessage(String msg) {
    reportedErrors.add(msg);
  }

  Parser1Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Parser1.g";
  DocumentContext document() {
    var localContext = new DocumentContext(context, state);
    enterRule(localContext, 0, RULE_DOCUMENT);
    try {
      enterOuterAlt(localContext, 1);
      state = 2; 
      localContext.t = match(IDENTIFIER);
      foundIdentifier(localContext.t != null ? localContext.t.text : null);
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

class DocumentContext extends ParserRuleContext {

  Token t;

  DocumentContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Parser1Parser.RULE_DOCUMENT;

  TerminalNode getIDENTIFIER() => getToken(Parser1Parser.IDENTIFIER, 0);
}

