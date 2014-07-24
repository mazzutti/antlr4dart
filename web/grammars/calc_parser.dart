// Generated from Calc.g by antlr4dart
part of calc;

class CalcParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_EVALUATE = 0, RULE_EXPRESSION = 1, RULE_MULT = 2, 
                   RULE_LOG = 3, RULE_EXP = 4, RULE_ATOM = 5;

  static const int T__9 = 1, T__8 = 2, T__7 = 3, T__6 = 4, T__5 = 5, T__4 = 6, 
                   T__3 = 7, T__2 = 8, T__1 = 9, T__0 = 10, INTEGER = 11, 
                   DECIMAL = 12, WS = 13;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x0f\x53\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x04\x05\x09\x05\x04\x06\x09\x06\x04\x07\x09\x07\x03\x02\x03"
  	"\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x07\x03\x1b\x0a\x03\x0c\x03\x0e\x03\x1e\x0b\x03\x03"
  	"\x03\x03\x03\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04"
  	"\x03\x04\x03\x04\x07\x04\x2b\x0a\x04\x0c\x04\x0e\x04\x2e\x0b\x04\x03"
  	"\x04\x03\x04\x03\x05\x03\x05\x03\x05\x03\x05\x03\x05\x03\x05\x03\x05"
  	"\x05\x05\x39\x0a\x05\x03\x06\x03\x06\x03\x06\x03\x06\x03\x06\x05\x06"
  	"\x40\x0a\x06\x03\x06\x03\x06\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07"
  	"\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x05"
  	"\x07\x51\x0a\x07\x03\x07\x02\x02\x08\x02\x04\x06\x08\x0a\x0c\x02\x02"
  	"\x56\x02\x0e\x03\x02\x02\x02\x04\x11\x03\x02\x02\x02\x06\x21\x03\x02"
  	"\x02\x02\x08\x38\x03\x02\x02\x02\x0a\x3a\x03\x02\x02\x02\x0c\x50\x03"
  	"\x02\x02\x02\x0e\x0f\x05\x04\x03\x02\x0f\x10\x08\x02\x01\x02\x10\x03"
  	"\x03\x02\x02\x02\x11\x1c\x05\x06\x04\x02\x12\x13\x07\x07\x02\x02\x13"
  	"\x14\x05\x06\x04\x02\x14\x15\x08\x03\x01\x02\x15\x1b\x03\x02\x02\x02"
  	"\x16\x17\x07\x08\x02\x02\x17\x18\x05\x06\x04\x02\x18\x19\x08\x03\x01"
  	"\x02\x19\x1b\x03\x02\x02\x02\x1a\x12\x03\x02\x02\x02\x1a\x16\x03\x02"
  	"\x02\x02\x1b\x1e\x03\x02\x02\x02\x1c\x1a\x03\x02\x02\x02\x1c\x1d\x03"
  	"\x02\x02\x02\x1d\x1f\x03\x02\x02\x02\x1e\x1c\x03\x02\x02\x02\x1f\x20"
  	"\x08\x03\x01\x02\x20\x05\x03\x02\x02\x02\x21\x2c\x05\x08\x05\x02\x22"
  	"\x23\x07\x09\x02\x02\x23\x24\x05\x08\x05\x02\x24\x25\x08\x04\x01\x02"
  	"\x25\x2b\x03\x02\x02\x02\x26\x27\x07\x0b\x02\x02\x27\x28\x05\x08\x05"
  	"\x02\x28\x29\x08\x04\x01\x02\x29\x2b\x03\x02\x02\x02\x2a\x22\x03\x02"
  	"\x02\x02\x2a\x26\x03\x02\x02\x02\x2b\x2e\x03\x02\x02\x02\x2c\x2a\x03"
  	"\x02\x02\x02\x2c\x2d\x03\x02\x02\x02\x2d\x2f\x03\x02\x02\x02\x2e\x2c"
  	"\x03\x02\x02\x02\x2f\x30\x08\x04\x01\x02\x30\x07\x03\x02\x02\x02\x31"
  	"\x32\x07\x0c\x02\x02\x32\x33\x05\x0a\x06\x02\x33\x34\x08\x05\x01\x02"
  	"\x34\x39\x03\x02\x02\x02\x35\x36\x05\x0a\x06\x02\x36\x37\x08\x05\x01"
  	"\x02\x37\x39\x03\x02\x02\x02\x38\x31\x03\x02\x02\x02\x38\x35\x03\x02"
  	"\x02\x02\x39\x09\x03\x02\x02\x02\x3a\x3f\x05\x0c\x07\x02\x3b\x3c\x07"
  	"\x03\x02\x02\x3c\x3d\x05\x0c\x07\x02\x3d\x3e\x08\x06\x01\x02\x3e\x40"
  	"\x03\x02\x02\x02\x3f\x3b\x03\x02\x02\x02\x3f\x40\x03\x02\x02\x02\x40"
  	"\x41\x03\x02\x02\x02\x41\x42\x08\x06\x01\x02\x42\x0b\x03\x02\x02\x02"
  	"\x43\x44\x07\x0d\x02\x02\x44\x51\x08\x07\x01\x02\x45\x46\x07\x0e\x02"
  	"\x02\x46\x51\x08\x07\x01\x02\x47\x48\x07\x0a\x02\x02\x48\x49\x05\x04"
  	"\x03\x02\x49\x4a\x08\x07\x01\x02\x4a\x4b\x07\x04\x02\x02\x4b\x51\x03"
  	"\x02\x02\x02\x4c\x4d\x07\x05\x02\x02\x4d\x51\x08\x07\x01\x02\x4e\x4f"
  	"\x07\x06\x02\x02\x4f\x51\x08\x07\x01\x02\x50\x43\x03\x02\x02\x02\x50"
  	"\x45\x03\x02\x02\x02\x50\x47\x03\x02\x02\x02\x50\x4c\x03\x02\x02\x02"
  	"\x50\x4e\x03\x02\x02\x02\x51\x0d\x03\x02\x02\x02\x09\x1a\x1c\x2a\x2c"
  	"\x38\x3f\x50";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'^'", "')'", "'PI'", "'E'", "'+'", "'-'", "'*'", "'('", 
    "'/'", "'ln'", "INTEGER", "DECIMAL", "WS"
  ];

  final List<String> ruleNames = [
    "evaluate", "expression", "mult", "log", "exp", "atom"
  ];
  CalcParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Calc.g";
  EvaluateContext evaluate() {
    var localContext = new EvaluateContext(context, state);
    enterRule(localContext, 0, RULE_EVALUATE);
    try {
      enterOuterAlt(localContext, 1);
      state = 12; 
      localContext.e = expression();
      localContext.result =  localContext.e.result;
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  ExpressionContext expression() {
    var localContext = new ExpressionContext(context, state);
    enterRule(localContext, 2, RULE_EXPRESSION);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 15; 
      localContext.m = mult();
      state = 26;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == T__5 || _la == T__4) {
        state = 24;
        switch (inputSource.lookAhead(1)) {
          case T__5: 
            state = 16; 
            match(T__5);
            state = 17; 
            localContext.m1 = mult();
            localContext.m.result += localContext.m1.result; 
            break;
          case T__4: 
            state = 20; 
            match(T__4);
            state = 21; 
            localContext.m1 = mult();
            localContext.m.result -= localContext.m1.result; 
            break;
          default: throw new NoViableAltException(this);
        }
        state = 28;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      localContext.result =  localContext.m.result;
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  MultContext mult() {
    var localContext = new MultContext(context, state);
    enterRule(localContext, 4, RULE_MULT);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 31; 
      localContext.l = log();
      state = 42;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == T__3 || _la == T__1) {
        state = 40;
        switch (inputSource.lookAhead(1)) {
          case T__3: 
            state = 32; 
            match(T__3);
            state = 33; 
            localContext.l2 = log();
            localContext.l.result *= localContext.l2.result; 
            break;
          case T__1: 
            state = 36; 
            match(T__1);
            state = 37; 
            localContext.l1 = log();
            localContext.l.result /= localContext.l1.result; 
            break;
          default: throw new NoViableAltException(this);
        }
        state = 44;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      localContext.result =  localContext.l.result;
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  LogContext log() {
    var localContext = new LogContext(context, state);
    enterRule(localContext, 6, RULE_LOG);
    try {
      state = 54;
      switch (inputSource.lookAhead(1)) {
        case T__0: 
          enterOuterAlt(localContext, 1);
          state = 47; 
          match(T__0);
          state = 48; 
          localContext.e = exp();
          localContext.result =  log(); 
          break;
        case T__7:
        case T__6:
        case T__2:
        case INTEGER:
        case DECIMAL: 
          enterOuterAlt(localContext, 2);
          state = 51; 
          localContext.e = exp();
          localContext.result =  localContext.e.result; 
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
  ExpContext exp() {
    var localContext = new ExpContext(context, state);
    enterRule(localContext, 8, RULE_EXP);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 56; 
      localContext.a = atom();
      state = 61;
      _la = inputSource.lookAhead(1);
      if (_la == T__9) {
        state = 57; 
        match(T__9);
        state = 58; 
        localContext.a1 = atom();
        localContext.a.result = pow(localContext.a.result, localContext.a1.result);
      }
      localContext.result =  localContext.a.result;
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  AtomContext atom() {
    var localContext = new AtomContext(context, state);
    enterRule(localContext, 10, RULE_ATOM);
    try {
      state = 78;
      switch (inputSource.lookAhead(1)) {
        case INTEGER: 
          enterOuterAlt(localContext, 1);
          state = 65; 
          localContext.n = match(INTEGER);
          localContext.result =  int.parse(localContext.n != null ? localContext.n.text : null); 
          break;
        case DECIMAL: 
          enterOuterAlt(localContext, 2);
          state = 67; 
          localContext.n = match(DECIMAL);
          localContext.result =  double.parse(localContext.n != null ? localContext.n.text : null); 
          break;
        case T__2: 
          enterOuterAlt(localContext, 3);
          state = 69; 
          match(T__2);
          state = 70; 
          localContext.r = expression();
          localContext.result =  localContext.r.result;
          state = 72; 
          match(T__8); 
          break;
        case T__7: 
          enterOuterAlt(localContext, 4);
          state = 74; 
          match(T__7);
          localContext.result =  PI; 
          break;
        case T__6: 
          enterOuterAlt(localContext, 5);
          state = 76; 
          match(T__6);
          localContext.result =  E; 
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
}

class EvaluateContext extends ParserRuleContext {

  num result;
  ExpressionContext e;

  EvaluateContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => CalcParser.RULE_EVALUATE;

  ExpressionContext getExpression() => getRuleContext((c) => c is ExpressionContext, 0);
}

class ExpressionContext extends ParserRuleContext {

  num result;
  MultContext m;
  MultContext m1;

  ExpressionContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => CalcParser.RULE_EXPRESSION;

  MultContext getMult(int i) => getRuleContext((c) => c is MultContext, i);

  List<MultContext> getMults() => getRuleContexts((c) => c is MultContext);
}

class MultContext extends ParserRuleContext {

  num result;
  LogContext l;
  LogContext l2;
  LogContext l1;

  MultContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => CalcParser.RULE_MULT;

  LogContext getLog(int i) => getRuleContext((c) => c is LogContext, i);

  List<LogContext> getLogs() => getRuleContexts((c) => c is LogContext);
}

class LogContext extends ParserRuleContext {

  num result;
  ExpContext e;

  LogContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => CalcParser.RULE_LOG;

  ExpContext getExp() => getRuleContext((c) => c is ExpContext, 0);
}

class ExpContext extends ParserRuleContext {

  num result;
  AtomContext a;
  AtomContext a1;

  ExpContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => CalcParser.RULE_EXP;

  AtomContext getAtom(int i) => getRuleContext((c) => c is AtomContext, i);

  List<AtomContext> getAtoms() => getRuleContexts((c) => c is AtomContext);
}

class AtomContext extends ParserRuleContext {

  num result;
  Token n;
  ExpressionContext r;

  AtomContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => CalcParser.RULE_ATOM;

  ExpressionContext getExpression() => getRuleContext((c) => c is ExpressionContext, 0);

  TerminalNode getINTEGER() => getToken(CalcParser.INTEGER, 0);

  TerminalNode getDECIMAL() => getToken(CalcParser.DECIMAL, 0);
}

