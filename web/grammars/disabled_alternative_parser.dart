// Generated from DisabledAlternative.g by antlr4dart
part of disabled_alternative;

class DisabledAlternativeParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_CPPCOMPILATIONUNIT = 0, RULE_CONTENT = 1, RULE_ANYTHING = 2;

  static const int ANY_CHAR = 1;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x03\x17\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x06\x02\x0a\x0a\x02\x0d\x02\x0e\x02\x0b\x03\x02\x03"
  	"\x02\x03\x03\x03\x03\x03\x03\x05\x03\x13\x0a\x03\x03\x04\x03\x04\x03"
  	"\x04\x02\x02\x05\x02\x04\x06\x02\x02\x15\x02\x09\x03\x02\x02\x02\x04"
  	"\x12\x03\x02\x02\x02\x06\x14\x03\x02\x02\x02\x08\x0a\x05\x04\x03\x02"
  	"\x09\x08\x03\x02\x02\x02\x0a\x0b\x03\x02\x02\x02\x0b\x09\x03\x02\x02"
  	"\x02\x0b\x0c\x03\x02\x02\x02\x0c\x0d\x03\x02\x02\x02\x0d\x0e\x07\x02"
  	"\x02\x03\x0e\x03\x03\x02\x02\x02\x0f\x13\x05\x06\x04\x02\x10\x11\x06"
  	"\x03\x02\x02\x11\x13\x0b\x02\x02\x02\x12\x0f\x03\x02\x02\x02\x12\x10"
  	"\x03\x02\x02\x02\x13\x05\x03\x02\x02\x02\x14\x15\x07\x03\x02\x02\x15"
  	"\x07\x03\x02\x02\x02\x04\x0b\x12";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "ANY_CHAR"
  ];

  final List<String> ruleNames = [
    "cppCompilationUnit", "content", "anything"
  ];
  DisabledAlternativeParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "DisabledAlternative.g";
  CppCompilationUnitContext cppCompilationUnit() {
    var localContext = new CppCompilationUnitContext(context, state);
    enterRule(localContext, 0, RULE_CPPCOMPILATIONUNIT);
    try {
      var _alt;
      enterOuterAlt(localContext, 1);
      state = 7; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
        	  state = 6; 
        	  content();
        	  break;
      	default:
      	  throw new NoViableAltException(this);
        }
        state = 9; 
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 0, context);
      } while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER);
      state = 11; 
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
  ContentContext content() {
    var localContext = new ContentContext(context, state);
    enterRule(localContext, 2, RULE_CONTENT);
    try {
      state = 16;
      switch (interpreter.adaptivePredict(inputSource, 1, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 13; 
          anything();
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 14;
          if (!(false)) 
            throw new FailedPredicateException(this, "false");
          state = 15;
          matchWildcard();
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
  AnythingContext anything() {
    var localContext = new AnythingContext(context, state);
    enterRule(localContext, 4, RULE_ANYTHING);
    try {
      enterOuterAlt(localContext, 1);
      state = 18; 
      match(ANY_CHAR);
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
      case 1: return _contentSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _contentSemanticPredicate(ContentContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return false;
    }
    return true;
  }
}

class CppCompilationUnitContext extends ParserRuleContext {

  CppCompilationUnitContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => DisabledAlternativeParser.RULE_CPPCOMPILATIONUNIT;

  TerminalNode getEOF() => getToken(DisabledAlternativeParser.EOF, 0);

  List<ContentContext> getContents() => getRuleContexts((c) => c is ContentContext);

  ContentContext getContent(int i) => getRuleContext((c) => c is ContentContext, i);
}

class ContentContext extends ParserRuleContext {

  ContentContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => DisabledAlternativeParser.RULE_CONTENT;

  AnythingContext getAnything() => getRuleContext((c) => c is AnythingContext, 0);
}

class AnythingContext extends ParserRuleContext {

  AnythingContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => DisabledAlternativeParser.RULE_ANYTHING;

  TerminalNode getANY_CHAR() => getToken(DisabledAlternativeParser.ANY_CHAR, 0);
}

