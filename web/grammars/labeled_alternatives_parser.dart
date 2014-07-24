// Generated from LabeledAlternatives.g by antlr4dart
part of labeled_alternatives;

class LabeledAlternativesParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_START = 0, RULE_A = 1, RULE_SUBRULE = 2;

  static const int T__1 = 1, T__0 = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x1a\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x07\x02\x0a\x0a\x02\x0c\x02\x0e\x02\x0d\x0b\x02\x03"
  	"\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x05\x03\x16\x0a"
  	"\x03\x03\x04\x03\x04\x03\x04\x02\x02\x05\x02\x04\x06\x02\x02\x18\x02"
  	"\x0b\x03\x02\x02\x02\x04\x15\x03\x02\x02\x02\x06\x17\x03\x02\x02\x02"
  	"\x08\x0a\x05\x04\x03\x02\x09\x08\x03\x02\x02\x02\x0a\x0d\x03\x02\x02"
  	"\x02\x0b\x09\x03\x02\x02\x02\x0b\x0c\x03\x02\x02\x02\x0c\x0e\x03\x02"
  	"\x02\x02\x0d\x0b\x03\x02\x02\x02\x0e\x0f\x07\x02\x02\x03\x0f\x03\x03"
  	"\x02\x02\x02\x10\x11\x05\x06\x04\x02\x11\x12\x08\x03\x01\x02\x12\x16"
  	"\x03\x02\x02\x02\x13\x14\x07\x04\x02\x02\x14\x16\x08\x03\x01\x02\x15"
  	"\x10\x03\x02\x02\x02\x15\x13\x03\x02\x02\x02\x16\x05\x03\x02\x02\x02"
  	"\x17\x18\x07\x03\x02\x02\x18\x07\x03\x02\x02\x02\x04\x0b\x15";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'x'", "'y'", "WS"
  ];

  final List<String> ruleNames = [
    "start", "a", "subrule"
  ];

  List log = new List();

  LabeledAlternativesParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "LabeledAlternatives.g";
  StartContext start() {
    var localContext = new StartContext(context, state);
    enterRule(localContext, 0, RULE_START);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 9;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == T__1 || _la == T__0) {
        state = 6; 
        a();
        state = 11;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 12; 
      match(EOF);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 2, RULE_A);
    try {
      state = 19;
      switch (inputSource.lookAhead(1)) {
        case T__1: 
          localContext = new OneContext(localContext);
          enterOuterAlt(localContext, 1);
          state = 14; 
          localContext.label = subrule();
          log.add(localContext.label != null ? inputSource.getText(localContext.label.start,localContext.label.stop) : null); 
          break;
        case T__0: 
          localContext = new TwoContext(localContext);
          enterOuterAlt(localContext, 2);
          state = 17; 
          localContext.label = match(T__0);
          log.add(localContext.label != null ? localContext.label.text : null); 
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
  SubruleContext subrule() {
    var localContext = new SubruleContext(context, state);
    enterRule(localContext, 4, RULE_SUBRULE);
    try {
      enterOuterAlt(localContext, 1);
      state = 21; 
      match(T__1);
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

class StartContext extends ParserRuleContext {

  StartContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LabeledAlternativesParser.RULE_START;

  TerminalNode getEOF() => getToken(LabeledAlternativesParser.EOF, 0);

  AContext getA(int i) => getRuleContext((c) => c is AContext, i);

  List<AContext> getAs() => getRuleContexts((c) => c is AContext);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LabeledAlternativesParser.RULE_A;
 
  AContext.from(AContext context) : super.from(context) {
  }
}

class SubruleContext extends ParserRuleContext {

  SubruleContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LabeledAlternativesParser.RULE_SUBRULE;
}

class OneContext extends AContext {
  SubruleContext label;
  SubruleContext getSubrule() => getRuleContext((c) => c is SubruleContext, 0);
  OneContext(AContext context) : super.from(context);
}

class TwoContext extends AContext {
  Token label;
  TwoContext(AContext context) : super.from(context);
}