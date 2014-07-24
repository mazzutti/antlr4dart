// Generated from RuleAsSet.g by antlr4dart
part of rule_as_set;

class RuleAsSetParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0;

  static const int T__2 = 1, T__1 = 2, T__0 = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x07\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x02\x02\x03\x02\x02\x03\x03\x02\x03\x05\x05\x02\x04\x03\x02\x02\x02"
  	"\x04\x05\x09\x02\x02\x02\x05\x03\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'b'", "'a'", "'c'"
  ];

  final List<String> ruleNames = [
    "a"
  ];

  List log = new List();

  RuleAsSetParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "RuleAsSet.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 2;
      _la = inputSource.lookAhead(1);
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__2) | (1 << T__1) | 
      	(1 << T__0))) != 0))) {
        errorHandler.recoverInline(this);
      }
      consume();
      log.add(inputSource.text);
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

  int get ruleIndex => RuleAsSetParser.RULE_A;
}

