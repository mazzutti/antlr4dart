// Generated from Hoist.g by antlr4dart
part of hoist;

class HoistParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_STAT = 0, RULE_IDENTIFIER = 1, RULE_ENUMASKEYWORD = 2, 
                   RULE_ENUMASID = 3;

  static const int T__0 = 1, ID = 2, INT = 3, WS = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x1d\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x04\x05\x09\x05\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03"
  	"\x02\x05\x02\x11\x0a\x02\x03\x03\x03\x03\x05\x03\x15\x0a\x03\x03\x04"
  	"\x03\x04\x03\x04\x03\x05\x03\x05\x03\x05\x03\x05\x02\x02\x06\x02\x04"
  	"\x06\x08\x02\x02\x1a\x02\x10\x03\x02\x02\x02\x04\x14\x03\x02\x02\x02"
  	"\x06\x16\x03\x02\x02\x02\x08\x19\x03\x02\x02\x02\x0a\x0b\x05\x04\x03"
  	"\x02\x0b\x0c\x08\x02\x01\x02\x0c\x11\x03\x02\x02\x02\x0d\x0e\x05\x06"
  	"\x04\x02\x0e\x0f\x08\x02\x01\x02\x0f\x11\x03\x02\x02\x02\x10\x0a\x03"
  	"\x02\x02\x02\x10\x0d\x03\x02\x02\x02\x11\x03\x03\x02\x02\x02\x12\x15"
  	"\x07\x04\x02\x02\x13\x15\x05\x08\x05\x02\x14\x12\x03\x02\x02\x02\x14"
  	"\x13\x03\x02\x02\x02\x15\x05\x03\x02\x02\x02\x16\x17\x06\x04\x02\x02"
  	"\x17\x18\x07\x03\x02\x02\x18\x07\x03\x02\x02\x02\x19\x1a\x06\x05\x03"
  	"\x02\x1a\x1b\x07\x03\x02\x02\x1b\x09\x03\x02\x02\x02\x04\x10\x14";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'enum'", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "stat", "identifier", "enumAsKeyword", "enumAsID"
  ];

  bool enableEnum = false;

  HoistParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Hoist.g";
  StatContext stat() {
    var localContext = new StatContext(context, state);
    enterRule(localContext, 0, RULE_STAT);
    try {
      state = 14;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 8; 
          identifier();
          localContext.enumIs =  "ID";
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 11; 
          enumAsKeyword();
          localContext.enumIs =  "keyword";
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
  IdentifierContext identifier() {
    var localContext = new IdentifierContext(context, state);
    enterRule(localContext, 2, RULE_IDENTIFIER);
    try {
      state = 18;
      switch (interpreter.adaptivePredict(inputSource, 1, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 16; 
          match(ID);
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 17; 
          enumAsID();
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
  EnumAsKeywordContext enumAsKeyword() {
    var localContext = new EnumAsKeywordContext(context, state);
    enterRule(localContext, 4, RULE_ENUMASKEYWORD);
    try {
      enterOuterAlt(localContext, 1);
      state = 20;
      if (!(enableEnum)) 
        throw new FailedPredicateException(this, "enableEnum");
      state = 21; 
      match(T__0);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  EnumAsIDContext enumAsID() {
    var localContext = new EnumAsIDContext(context, state);
    enterRule(localContext, 6, RULE_ENUMASID);
    try {
      enterOuterAlt(localContext, 1);
      state = 23;
      if (!(!enableEnum)) 
        throw new FailedPredicateException(this, "!enableEnum");
      state = 24; 
      match(T__0);
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
      case 2: return _enumAsKeywordSemanticPredicate(localContext, predIndex);
      case 3: return _enumAsIDSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _enumAsIDSemanticPredicate(EnumAsIDContext localContext, int predIndex) {
    switch (predIndex) {
      case 1: return !enableEnum;
    }
    return true;
  }


  bool _enumAsKeywordSemanticPredicate(EnumAsKeywordContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return enableEnum;
    }
    return true;
  }
}

class StatContext extends ParserRuleContext {

  String enumIs;

  StatContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => HoistParser.RULE_STAT;

  EnumAsKeywordContext getEnumAsKeyword() => getRuleContext((c) => c is EnumAsKeywordContext, 0);

  IdentifierContext getIdentifier() => getRuleContext((c) => c is IdentifierContext, 0);
}

class IdentifierContext extends ParserRuleContext {

  IdentifierContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => HoistParser.RULE_IDENTIFIER;

  EnumAsIDContext getEnumAsID() => getRuleContext((c) => c is EnumAsIDContext, 0);

  TerminalNode getID() => getToken(HoistParser.ID, 0);
}

class EnumAsKeywordContext extends ParserRuleContext {

  EnumAsKeywordContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => HoistParser.RULE_ENUMASKEYWORD;
}

class EnumAsIDContext extends ParserRuleContext {

  EnumAsIDContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => HoistParser.RULE_ENUMASID;
}

