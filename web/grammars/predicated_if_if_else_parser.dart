// Generated from PredicatedIfIfElse.g by antlr4dart
part of predicated_if_if_else;

class PredicatedIfIfElseParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_STMT = 1, RULE_IFSTMT = 2;

  static const int T__0 = 1, ELSE = 2, ID = 3, WS = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x18\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x05\x03\x0e\x0a\x03"
  	"\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x05\x04\x16\x0a\x04"
  	"\x03\x04\x02\x02\x05\x02\x04\x06\x02\x02\x16\x02\x08\x03\x02\x02\x02"
  	"\x04\x0d\x03\x02\x02\x02\x06\x0f\x03\x02\x02\x02\x08\x09\x05\x04\x03"
  	"\x02\x09\x0a\x07\x02\x02\x03\x0a\x03\x03\x02\x02\x02\x0b\x0e\x05\x06"
  	"\x04\x02\x0c\x0e\x07\x05\x02\x02\x0d\x0b\x03\x02\x02\x02\x0d\x0c\x03"
  	"\x02\x02\x02\x0e\x05\x03\x02\x02\x02\x0f\x10\x07\x03\x02\x02\x10\x11"
  	"\x07\x05\x02\x02\x11\x15\x05\x04\x03\x02\x12\x13\x07\x04\x02\x02\x13"
  	"\x16\x05\x04\x03\x02\x14\x16\x06\x04\x02\x02\x15\x12\x03\x02\x02\x02"
  	"\x15\x14\x03\x02\x02\x02\x16\x07\x03\x02\x02\x02\x04\x0d\x15";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'if'", "'else'", "ID", "WS"
  ];

  final List<String> ruleNames = [
    "s", "stmt", "ifStmt"
  ];
  PredicatedIfIfElseParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "PredicatedIfIfElse.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 6; 
      stmt();
      state = 7; 
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
  StmtContext stmt() {
    var localContext = new StmtContext(context, state);
    enterRule(localContext, 2, RULE_STMT);
    try {
      state = 11;
      switch (inputSource.lookAhead(1)) {
        case T__0: 
          enterOuterAlt(localContext, 1);
          state = 9; 
          ifStmt(); 
          break;
        case ID: 
          enterOuterAlt(localContext, 2);
          state = 10; 
          match(ID); 
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
  IfStmtContext ifStmt() {
    var localContext = new IfStmtContext(context, state);
    enterRule(localContext, 4, RULE_IFSTMT);
    try {
      enterOuterAlt(localContext, 1);
      state = 13; 
      match(T__0);
      state = 14; 
      match(ID);
      state = 15; 
      stmt();
      state = 19;
      switch (interpreter.adaptivePredict(inputSource, 1, context)) {
        case 1:
          state = 16; 
          match(ELSE);
          state = 17; 
          stmt();
          break;
        case 2:
          state = 18;
          if (!(inputSource.lookAhead(1) != ELSE)) 
            throw new FailedPredicateException(this, "inputSource.lookAhead(1) != ELSE");
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
      case 2: return _ifStmtSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _ifStmtSemanticPredicate(IfStmtContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return inputSource.lookAhead(1) != ELSE;
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => PredicatedIfIfElseParser.RULE_S;

  TerminalNode getEOF() => getToken(PredicatedIfIfElseParser.EOF, 0);

  StmtContext getStmt() => getRuleContext((c) => c is StmtContext, 0);
}

class StmtContext extends ParserRuleContext {

  StmtContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => PredicatedIfIfElseParser.RULE_STMT;

  IfStmtContext getIfStmt() => getRuleContext((c) => c is IfStmtContext, 0);

  TerminalNode getID() => getToken(PredicatedIfIfElseParser.ID, 0);
}

class IfStmtContext extends ParserRuleContext {

  IfStmtContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => PredicatedIfIfElseParser.RULE_IFSTMT;

  StmtContext getStmt(int i) => getRuleContext((c) => c is StmtContext, i);

  TerminalNode getID() => getToken(PredicatedIfIfElseParser.ID, 0);

  List<StmtContext> getStmts() => getRuleContexts((c) => c is StmtContext);
}

