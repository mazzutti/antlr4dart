// Generated from Parser2.g by antlr4dart
part of parser2;

class Parser2Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_DOCUMENT = 0, RULE_DECLARATION = 1, RULE_CALL = 2;

  static const int T__3 = 1, T__2 = 2, T__1 = 3, T__0 = 4, IDENTIFIER = 5, 
                   WS = 6;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x08\x1d\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x03\x02\x07\x02\x0b\x0a\x02\x0c\x02\x0e\x02\x0e\x0b"
  	"\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x04"
  	"\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x02\x02\x05\x02\x04"
  	"\x06\x02\x02\x1b\x02\x0c\x03\x02\x02\x02\x04\x11\x03\x02\x02\x02\x06"
  	"\x16\x03\x02\x02\x02\x08\x0b\x05\x04\x03\x02\x09\x0b\x05\x06\x04\x02"
  	"\x0a\x08\x03\x02\x02\x02\x0a\x09\x03\x02\x02\x02\x0b\x0e\x03\x02\x02"
  	"\x02\x0c\x0a\x03\x02\x02\x02\x0c\x0d\x03\x02\x02\x02\x0d\x0f\x03\x02"
  	"\x02\x02\x0e\x0c\x03\x02\x02\x02\x0f\x10\x07\x02\x02\x03\x10\x03\x03"
  	"\x02\x02\x02\x11\x12\x07\x06\x02\x02\x12\x13\x07\x07\x02\x02\x13\x14"
  	"\x07\x05\x02\x02\x14\x15\x08\x03\x01\x02\x15\x05\x03\x02\x02\x02\x16"
  	"\x17\x07\x07\x02\x02\x17\x18\x07\x04\x02\x02\x18\x19\x07\x03\x02\x02"
  	"\x19\x1a\x07\x05\x02\x02\x1a\x1b\x08\x04\x01\x02\x1b\x07\x03\x02\x02"
  	"\x02\x04\x0a\x0c";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "')'", "'('", "';'", "'var'", "IDENTIFIER", "WS"
  ];

  final List<String> ruleNames = [
    "document", "declaration", "call"
  ];

  List events = new List();

  void eventMessage(dynamic msg) {
    events.add(msg);
  }

  Parser2Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Parser2.g";
  DocumentContext document() {
    var localContext = new DocumentContext(context, state);
    enterRule(localContext, 0, RULE_DOCUMENT);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 10;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == T__0 || _la == IDENTIFIER) {
        state = 8;
        switch (inputSource.lookAhead(1)) {
          case T__0: 
            state = 6; 
            declaration(); 
            break;
          case IDENTIFIER: 
            state = 7; 
            call(); 
            break;
          default: throw new NoViableAltException(this);
        }
        state = 12;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 13; 
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
  DeclarationContext declaration() {
    var localContext = new DeclarationContext(context, state);
    enterRule(localContext, 2, RULE_DECLARATION);
    try {
      enterOuterAlt(localContext, 1);
      state = 15; 
      match(T__0);
      state = 16; 
      localContext.t = match(IDENTIFIER);
      state = 17; 
      match(T__1);
      eventMessage(['decl', localContext.t != null ? localContext.t.text : null]);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  CallContext call() {
    var localContext = new CallContext(context, state);
    enterRule(localContext, 4, RULE_CALL);
    try {
      enterOuterAlt(localContext, 1);
      state = 20; 
      localContext.t = match(IDENTIFIER);
      state = 21; 
      match(T__2);
      state = 22; 
      match(T__3);
      state = 23; 
      match(T__1);
      eventMessage(['call', localContext.t != null ? localContext.t.text : null]);
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

  DocumentContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Parser2Parser.RULE_DOCUMENT;

  TerminalNode getEOF() => getToken(Parser2Parser.EOF, 0);

  List<DeclarationContext> getDeclarations() => getRuleContexts((c) => c is DeclarationContext);

  DeclarationContext getDeclaration(int i) => getRuleContext((c) => c is DeclarationContext, i);

  List<CallContext> getCalls() => getRuleContexts((c) => c is CallContext);

  CallContext getCall(int i) => getRuleContext((c) => c is CallContext, i);
}

class DeclarationContext extends ParserRuleContext {

  Token t;

  DeclarationContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Parser2Parser.RULE_DECLARATION;

  TerminalNode getIDENTIFIER() => getToken(Parser2Parser.IDENTIFIER, 0);
}

class CallContext extends ParserRuleContext {

  Token t;

  CallContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => Parser2Parser.RULE_CALL;

  TerminalNode getIDENTIFIER() => getToken(Parser2Parser.IDENTIFIER, 0);
}

