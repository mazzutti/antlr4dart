// Generated from Actions.g by antlr4dart
part of actions;

class ActionsParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_DECLARATION = 0, RULE_FUNCTIONHEADER = 1, RULE_TYPE = 2;

  static const int T__3 = 1, T__2 = 2, T__1 = 3, T__0 = 4, ID = 5, WS = 6;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x08\x13\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x04\x03\x04\x03\x04\x02\x02\x05\x02\x04\x06\x02\x03\x04\x02"
  	"\x03\x04\x06\x06\x0f\x02\x08\x03\x02\x02\x02\x04\x0c\x03\x02\x02\x02"
  	"\x06\x10\x03\x02\x02\x02\x08\x09\x05\x04\x03\x02\x09\x0a\x07\x05\x02"
  	"\x02\x0a\x0b\x08\x02\x01\x02\x0b\x03\x03\x02\x02\x02\x0c\x0d\x05\x06"
  	"\x04\x02\x0d\x0e\x07\x07\x02\x02\x0e\x0f\x08\x03\x01\x02\x0f\x05\x03"
  	"\x02\x02\x02\x10\x11\x09\x02\x02\x02\x11\x07\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'void'", "'int'", "';'", "'char'", "ID", "WS"
  ];

  final List<String> ruleNames = [
    "declaration", "functionHeader", "type"
  ];
  ActionsParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Actions.g";
  DeclarationContext declaration() {
    var localContext = new DeclarationContext(context, state);
    enterRule(localContext, 0, RULE_DECLARATION);
    try {
      enterOuterAlt(localContext, 1);
      state = 6; 
      localContext.functionHeader = functionHeader();
      state = 7; 
      match(T__1);
      localContext.name =  localContext.functionHeader.name;
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  FunctionHeaderContext functionHeader() {
    var localContext = new FunctionHeaderContext(context, state);
    enterRule(localContext, 2, RULE_FUNCTIONHEADER);
    try {
      enterOuterAlt(localContext, 1);
      state = 10; 
      type();
      state = 11; 
      localContext.id = match(ID);
      localContext.name =  localContext.id != null ? localContext.id.text : null;
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  TypeContext type() {
    var localContext = new TypeContext(context, state);
    enterRule(localContext, 4, RULE_TYPE);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 14;
      _la = inputSource.lookAhead(1);
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__3) | (1 << T__2) | 
      	(1 << T__0))) != 0))) {
        errorHandler.recoverInline(this);
      }
      consume();
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

class DeclarationContext extends ParserRuleContext {

  String name;
  FunctionHeaderContext functionHeader;

  DeclarationContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ActionsParser.RULE_DECLARATION;

  FunctionHeaderContext getFunctionHeader() => getRuleContext((c) => c is FunctionHeaderContext, 0);
}

class FunctionHeaderContext extends ParserRuleContext {

  String name;
  Token id;

  FunctionHeaderContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ActionsParser.RULE_FUNCTIONHEADER;

  TerminalNode getID() => getToken(ActionsParser.ID, 0);

  TypeContext getType() => getRuleContext((c) => c is TypeContext, 0);
}

class TypeContext extends ParserRuleContext {

  TypeContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ActionsParser.RULE_TYPE;
}

