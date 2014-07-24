// Generated from PredTested.g by antlr4dart
part of pred_tested;

class PredTestedParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_PRIMARY = 0;

  static const int T__0 = 1, ID = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x0c\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x03\x02\x03\x02\x05\x02\x0a\x0a\x02\x03\x02\x02\x02\x03\x02\x02\x02"
  	"\x0b\x02\x09\x03\x02\x02\x02\x04\x05\x07\x04\x02\x02\x05\x0a\x08\x02"
  	"\x01\x02\x06\x07\x06\x02\x02\x02\x07\x08\x07\x03\x02\x02\x08\x0a\x08"
  	"\x02\x01\x02\x09\x04\x03\x02\x02\x02\x09\x06\x03\x02\x02\x02\x0a\x03"
  	"\x03\x02\x02\x02\x03\x09";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'enum'", "ID", "WS"
  ];

  final List<String> ruleNames = [
    "primary"
  ];

  List log = new List();
  bool enumKeyword = true;

  PredTestedParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "PredTested.g";
  PrimaryContext primary() {
    var localContext = new PrimaryContext(context, state);
    enterRule(localContext, 0, RULE_PRIMARY);
    try {
      state = 7;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 2; 
          localContext.ID = match(ID);
          log.add("ID ${localContext.ID != null ? localContext.ID.text : null}");
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 4;
          if (!(!enumKeyword)) 
            throw new FailedPredicateException(this, "!enumKeyword");
          state = 5; 
          match(T__0);
          log.add("enum");
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

  bool semanticPredicate(RuleContext localContext, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 0: return _primarySemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _primarySemanticPredicate(PrimaryContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return !enumKeyword;
    }
    return true;
  }
}

class PrimaryContext extends ParserRuleContext {

  Token ID;

  PrimaryContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => PredTestedParser.RULE_PRIMARY;

  TerminalNode getID() => getToken(PredTestedParser.ID, 0);
}

