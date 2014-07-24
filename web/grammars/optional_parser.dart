// Generated from Optional.g by antlr4dart
part of optional;

class OptionalParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_STAT = 0, RULE_IFSTAT = 1;

  static const int T__2 = 1, T__1 = 2, T__0 = 3, WS = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x11\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x05\x02\x09\x0a\x02\x03\x03\x03\x03\x03\x03\x03\x03\x05\x03"
  	"\x0f\x0a\x03\x03\x03\x02\x02\x04\x02\x04\x02\x02\x10\x02\x08\x03\x02"
  	"\x02\x02\x04\x0a\x03\x02\x02\x02\x06\x09\x05\x04\x03\x02\x07\x09\x07"
  	"\x03\x02\x02\x08\x06\x03\x02\x02\x02\x08\x07\x03\x02\x02\x02\x09\x03"
  	"\x03\x02\x02\x02\x0a\x0b\x07\x04\x02\x02\x0b\x0e\x05\x02\x02\x02\x0c"
  	"\x0d\x07\x05\x02\x02\x0d\x0f\x05\x02\x02\x02\x0e\x0c\x03\x02\x02\x02"
  	"\x0e\x0f\x03\x02\x02\x02\x0f\x05\x03\x02\x02\x02\x04\x08\x0e";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'x'", "'if'", "'else'", "WS"
  ];

  final List<String> ruleNames = [
    "stat", "ifstat"
  ];

  List log = new List();

  OptionalParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Optional.g";
  StatContext stat() {
    var localContext = new StatContext(context, state);
    enterRule(localContext, 0, RULE_STAT);
    try {
      state = 6;
      switch (inputSource.lookAhead(1)) {
        case T__1: 
          enterOuterAlt(localContext, 1);
          state = 4; 
          ifstat(); 
          break;
        case T__2: 
          enterOuterAlt(localContext, 2);
          state = 5; 
          match(T__2); 
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
  IfstatContext ifstat() {
    var localContext = new IfstatContext(context, state);
    enterRule(localContext, 2, RULE_IFSTAT);
    try {
      enterOuterAlt(localContext, 1);
      state = 8; 
      match(T__1);
      state = 9; 
      stat();
      state = 12;
      switch (interpreter.adaptivePredict(inputSource, 1, context)) {
        case 1:
          state = 10; 
          match(T__0);
          state = 11; 
          stat();
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

class StatContext extends ParserRuleContext {

  StatContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => OptionalParser.RULE_STAT;

  IfstatContext getIfstat() => getRuleContext((c) => c is IfstatContext, 0);
}

class IfstatContext extends ParserRuleContext {

  IfstatContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => OptionalParser.RULE_IFSTAT;

  StatContext getStat(int i) => getRuleContext((c) => c is StatContext, i);

  List<StatContext> getStats() => getRuleContexts((c) => c is StatContext);
}

