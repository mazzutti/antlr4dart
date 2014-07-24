// Generated from SimpleValidate2.g by antlr4dart
part of simple_validate2;

class SimpleValidate2Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_A = 1;

  static const int ID = 1, INT = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x13\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x05\x03\x11\x0a\x03\x03\x03\x02\x02\x04\x02\x04\x02\x02\x11\x02"
  	"\x06\x03\x02\x02\x02\x04\x10\x03\x02\x02\x02\x06\x07\x05\x04\x03\x02"
  	"\x07\x08\x05\x04\x03\x02\x08\x09\x05\x04\x03\x02\x09\x03\x03\x02\x02"
  	"\x02\x0a\x0b\x06\x03\x02\x02\x0b\x0c\x07\x03\x02\x02\x0c\x11\x08\x03"
  	"\x01\x02\x0d\x0e\x06\x03\x03\x02\x0e\x0f\x07\x04\x02\x02\x0f\x11\x08"
  	"\x03\x01\x02\x10\x0a\x03\x02\x02\x02\x10\x0d\x03\x02\x02\x02\x11\x05"
  	"\x03\x02\x02\x02\x03\x10";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "a"
  ];

  List log = new List();

  SimpleValidate2Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "SimpleValidate2.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      a();
      state = 5; 
      a();
      state = 6; 
      a();
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
      state = 14;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 8;
          if (!(false)) 
            throw new FailedPredicateException(this, "false");
          state = 9; 
          match(ID);
          log.add("alt 1");
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 11;
          if (!(true)) 
            throw new FailedPredicateException(this, "true");
          state = 12; 
          match(INT);
          log.add("alt 2");
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
      case 1: return _aSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _aSemanticPredicate(AContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return false;
      case 1: return true;
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SimpleValidate2Parser.RULE_S;

  AContext getA(int i) => getRuleContext((c) => c is AContext, i);

  List<AContext> getAs() => getRuleContexts((c) => c is AContext);
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => SimpleValidate2Parser.RULE_A;

  TerminalNode getINT() => getToken(SimpleValidate2Parser.INT, 0);

  TerminalNode getID() => getToken(SimpleValidate2Parser.ID, 0);
}

