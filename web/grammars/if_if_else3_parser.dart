// Generated from IfIfElse3.g by antlr4dart
part of if_if_else3;

class IfIfElse3Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_START = 0, RULE_STATEMENT = 1, RULE_IFSTATEMENT = 2;

  static const int T__3 = 1, T__2 = 2, T__1 = 3, T__0 = 4, ID = 5, WS = 6;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x08\x1b\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x06\x02\x0a\x0a\x02\x0d\x02\x0e\x02\x0b\x03\x03\x03"
  	"\x03\x05\x03\x10\x0a\x03\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x05"
  	"\x04\x17\x0a\x04\x03\x04\x03\x04\x03\x04\x03\x16\x02\x05\x02\x04\x06"
  	"\x02\x02\x1a\x02\x09\x03\x02\x02\x02\x04\x0f\x03\x02\x02\x02\x06\x11"
  	"\x03\x02\x02\x02\x08\x0a\x05\x04\x03\x02\x09\x08\x03\x02\x02\x02\x0a"
  	"\x0b\x03\x02\x02\x02\x0b\x09\x03\x02\x02\x02\x0b\x0c\x03\x02\x02\x02"
  	"\x0c\x03\x03\x02\x02\x02\x0d\x10\x07\x03\x02\x02\x0e\x10\x05\x06\x04"
  	"\x02\x0f\x0d\x03\x02\x02\x02\x0f\x0e\x03\x02\x02\x02\x10\x05\x03\x02"
  	"\x02\x02\x11\x12\x07\x05\x02\x02\x12\x13\x07\x04\x02\x02\x13\x16\x05"
  	"\x04\x03\x02\x14\x15\x07\x06\x02\x02\x15\x17\x05\x04\x03\x02\x16\x17"
  	"\x03\x02\x02\x02\x16\x14\x03\x02\x02\x02\x17\x18\x03\x02\x02\x02\x18"
  	"\x19\x08\x04\x01\x02\x19\x07\x03\x02\x02\x02\x05\x0b\x0f\x16";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'x'", "'y'", "'if'", "'else'", "ID", "WS"
  ];

  final List<String> ruleNames = [
    "start", "statement", "ifStatement"
  ];

  List log = new List();

  IfIfElse3Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "IfIfElse3.g";
  StartContext start() {
    var localContext = new StartContext(context, state);
    enterRule(localContext, 0, RULE_START);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 7; 
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      do {
        state = 6; 
        statement();
        state = 9; 
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      } while (_la == T__3 || _la == T__1);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  StatementContext statement() {
    var localContext = new StatementContext(context, state);
    enterRule(localContext, 2, RULE_STATEMENT);
    try {
      state = 13;
      switch (inputSource.lookAhead(1)) {
        case T__3: 
          enterOuterAlt(localContext, 1);
          state = 11; 
          match(T__3); 
          break;
        case T__1: 
          enterOuterAlt(localContext, 2);
          state = 12; 
          ifStatement(); 
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
  IfStatementContext ifStatement() {
    var localContext = new IfStatementContext(context, state);
    enterRule(localContext, 4, RULE_IFSTATEMENT);
    try {
      enterOuterAlt(localContext, 1);
      state = 15; 
      match(T__1);
      state = 16; 
      match(T__2);
      state = 17; 
      statement();
      state = 20;
      switch (interpreter.adaptivePredict(inputSource, 2, context)) {
        case 1+1:
          state = 18; 
          match(T__0);
          state = 19; 
          statement();
          break;
      }
      log.add(inputSource.getText(localContext.start, inputSource.lookToken(-1)));
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

  int get ruleIndex => IfIfElse3Parser.RULE_START;

  List<StatementContext> getStatements() => getRuleContexts((c) => c is StatementContext);

  StatementContext getStatement(int i) => getRuleContext((c) => c is StatementContext, i);
}

class StatementContext extends ParserRuleContext {

  StatementContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => IfIfElse3Parser.RULE_STATEMENT;

  IfStatementContext getIfStatement() => getRuleContext((c) => c is IfStatementContext, 0);
}

class IfStatementContext extends ParserRuleContext {

  IfStatementContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => IfIfElse3Parser.RULE_IFSTATEMENT;

  List<StatementContext> getStatements() => getRuleContexts((c) => c is StatementContext);

  StatementContext getStatement(int i) => getRuleContext((c) => c is StatementContext, i);
}

