// Generated from Delegator9.g by antlr4dart
part of delegator9;

class Delegator9Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_PROG = 0, RULE_TYPE = 1, RULE_DECL = 2, RULE_INIT = 3;

  static const int T__3 = 1, T__2 = 2, T__1 = 3, T__0 = 4, ID = 5, INT = 6, 
                   WS = 7;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x09\x1e\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x04\x05\x09\x05\x03\x02\x03\x02\x03\x03\x03\x03\x03\x04\x03"
  	"\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04"
  	"\x05\x04\x19\x0a\x04\x03\x05\x03\x05\x03\x05\x03\x05\x02\x02\x06\x02"
  	"\x04\x06\x08\x02\x03\x04\x02\x03\x03\x05\x05\x1a\x02\x0a\x03\x02\x02"
  	"\x02\x04\x0c\x03\x02\x02\x02\x06\x18\x03\x02\x02\x02\x08\x1a\x03\x02"
  	"\x02\x02\x0a\x0b\x05\x06\x04\x02\x0b\x03\x03\x02\x02\x02\x0c\x0d\x09"
  	"\x02\x02\x02\x0d\x05\x03\x02\x02\x02\x0e\x0f\x05\x04\x03\x02\x0f\x10"
  	"\x07\x07\x02\x02\x10\x11\x07\x06\x02\x02\x11\x19\x03\x02\x02\x02\x12"
  	"\x13\x05\x04\x03\x02\x13\x14\x07\x07\x02\x02\x14\x15\x05\x08\x05\x02"
  	"\x15\x16\x07\x06\x02\x02\x16\x17\x08\x04\x01\x02\x17\x19\x03\x02\x02"
  	"\x02\x18\x0e\x03\x02\x02\x02\x18\x12\x03\x02\x02\x02\x19\x07\x03\x02"
  	"\x02\x02\x1a\x1b\x07\x04\x02\x02\x1b\x1c\x07\x08\x02\x02\x1c\x09\x03"
  	"\x02\x02\x02\x03\x18";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'int'", "'='", "'float'", "';'", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "prog", "type", "decl", "init"
  ];

  List log = new List();

  Delegator9Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Delegator9.g";
  ProgContext prog() {
    var localContext = new ProgContext(context, state);
    enterRule(localContext, 0, RULE_PROG);
    try {
      enterOuterAlt(localContext, 1);
      state = 8; 
      decl();
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
    enterRule(localContext, 2, RULE_TYPE);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 10;
      _la = inputSource.lookAhead(1);
      if (!(_la == T__3 || _la == T__1)) {
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
  DeclContext decl() {
    var localContext = new DeclContext(context, state);
    enterRule(localContext, 4, RULE_DECL);
    try {
      state = 22;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 12; 
          type();
          state = 13; 
          match(ID);
          state = 14; 
          match(T__0);
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 16; 
          type();
          state = 17; 
          match(ID);
          state = 18; 
          init();
          state = 19; 
          match(T__0);
          log.add("DelegatorImport9: ${inputSource.getText(localContext.start, inputSource.lookToken(-1))}");
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
  InitContext init() {
    var localContext = new InitContext(context, state);
    enterRule(localContext, 6, RULE_INIT);
    try {
      enterOuterAlt(localContext, 1);
      state = 24; 
      match(T__2);
      state = 25; 
      match(INT);
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

class ProgContext extends ParserRuleContext {

  ProgContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Delegator9Parser.RULE_PROG;

  DeclContext getDecl() => getRuleContext((c) => c is DeclContext, 0);
}

class TypeContext extends ParserRuleContext {

  TypeContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Delegator9Parser.RULE_TYPE;
}

class DeclContext extends ParserRuleContext {

  DeclContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Delegator9Parser.RULE_DECL;

  TerminalNode getID() => getToken(Delegator9Parser.ID, 0);

  TypeContext getType() => getRuleContext((c) => c is TypeContext, 0);

  InitContext getInit() => getRuleContext((c) => c is InitContext, 0);
}

class InitContext extends ParserRuleContext {

  InitContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Delegator9Parser.RULE_INIT;

  TerminalNode getINT() => getToken(Delegator9Parser.INT, 0);
}

