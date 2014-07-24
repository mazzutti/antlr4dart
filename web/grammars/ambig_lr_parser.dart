// Generated from AmbigLR.g by antlr4dart
part of ambig_lr;

class AmbigLRParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_PROG = 0, RULE_STAT = 1, RULE_EXPR = 2;

  static const int T__2 = 1, T__1 = 2, T__0 = 3, MUL = 4, DIV = 5, ADD = 6, 
                   SUB = 7, ID = 8, INT = 9, NEWLINE = 10, WS = 11;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x0d\x2a\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x05\x03\x14\x0a\x03\x03\x04\x03\x04\x03"
  	"\x04\x03\x04\x03\x04\x03\x04\x03\x04\x05\x04\x1d\x0a\x04\x03\x04\x03"
  	"\x04\x03\x04\x03\x04\x03\x04\x03\x04\x07\x04\x25\x0a\x04\x0c\x04\x0e"
  	"\x04\x28\x0b\x04\x03\x04\x02\x03\x06\x05\x02\x04\x06\x02\x04\x03\x02"
  	"\x06\x07\x03\x02\x08\x09\x2c\x02\x08\x03\x02\x02\x02\x04\x13\x03\x02"
  	"\x02\x02\x06\x1c\x03\x02\x02\x02\x08\x09\x05\x04\x03\x02\x09\x03\x03"
  	"\x02\x02\x02\x0a\x0b\x05\x06\x04\x02\x0b\x0c\x07\x0c\x02\x02\x0c\x14"
  	"\x03\x02\x02\x02\x0d\x0e\x07\x0a\x02\x02\x0e\x0f\x07\x05\x02\x02\x0f"
  	"\x10\x05\x06\x04\x02\x10\x11\x07\x0c\x02\x02\x11\x14\x03\x02\x02\x02"
  	"\x12\x14\x07\x0c\x02\x02\x13\x0a\x03\x02\x02\x02\x13\x0d\x03\x02\x02"
  	"\x02\x13\x12\x03\x02\x02\x02\x14\x05\x03\x02\x02\x02\x15\x16\x08\x04"
  	"\x01\x02\x16\x1d\x07\x0b\x02\x02\x17\x1d\x07\x0a\x02\x02\x18\x19\x07"
  	"\x04\x02\x02\x19\x1a\x05\x06\x04\x02\x1a\x1b\x07\x03\x02\x02\x1b\x1d"
  	"\x03\x02\x02\x02\x1c\x15\x03\x02\x02\x02\x1c\x17\x03\x02\x02\x02\x1c"
  	"\x18\x03\x02\x02\x02\x1d\x26\x03\x02\x02\x02\x1e\x1f\x0c\x07\x02\x02"
  	"\x1f\x20\x09\x02\x02\x02\x20\x25\x05\x06\x04\x08\x21\x22\x0c\x06\x02"
  	"\x02\x22\x23\x09\x03\x02\x02\x23\x25\x05\x06\x04\x07\x24\x1e\x03\x02"
  	"\x02\x02\x24\x21\x03\x02\x02\x02\x25\x28\x03\x02\x02\x02\x26\x24\x03"
  	"\x02\x02\x02\x26\x27\x03\x02\x02\x02\x27\x07\x03\x02\x02\x02\x28\x26"
  	"\x03\x02\x02\x02\x06\x13\x1c\x24\x26";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "')'", "'('", "'='", "'*'", "'/'", "'+'", "'-'", "ID", 
    "INT", "NEWLINE", "WS"
  ];

  final List<String> ruleNames = [
    "prog", "stat", "expr"
  ];

  List log = new List();

  AmbigLRParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "AmbigLR.g";
  ProgContext prog() {
    var localContext = new ProgContext(context, state);
    enterRule(localContext, 0, RULE_PROG);
    try {
      enterOuterAlt(localContext, 1);
      state = 6; 
      stat();
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  StatContext stat() {
    var localContext = new StatContext(context, state);
    enterRule(localContext, 2, RULE_STAT);
    try {
      state = 17;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          localContext = new PrintExprContext(localContext);
          enterOuterAlt(localContext, 1);
          state = 8; 
          expr(0);
          state = 9; 
          match(NEWLINE);
          break;
        case 2:
          localContext = new AssignContext(localContext);
          enterOuterAlt(localContext, 2);
          state = 11; 
          match(ID);
          state = 12; 
          match(T__0);
          state = 13; 
          expr(0);
          state = 14; 
          match(NEWLINE);
          break;
        case 3:
          localContext = new BlankContext(localContext);
          enterOuterAlt(localContext, 3);
          state = 16; 
          match(NEWLINE);
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
  ExprContext expr([int _p = 0]) {
    var _parentctx = context;
    int _parentState = state;
    var localContext = new ExprContext(context, _parentState);
    var _prevctx = localContext;
    int _startState = 4;
    enterRecursionRule(localContext, 4, RULE_EXPR, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(localContext, 1);
      state = 26;
      switch (inputSource.lookAhead(1)) {
        case INT: 
          localContext = new IntContext(localContext);
          context = localContext;
          _prevctx = localContext;

          state = 20; 
          match(INT); 
          break;
        case ID: 
          localContext = new IdContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 21; 
          match(ID); 
          break;
        case T__1: 
          localContext = new ParensContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 22; 
          match(T__1);
          state = 23; 
          expr(0);
          state = 24; 
          match(T__2); 
          break;
        default: throw new NoViableAltException(this);
      }
      context.stop = inputSource.lookToken(-1);
      state = 36;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 3, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          state = 34;
          switch (interpreter.adaptivePredict(inputSource, 2, context)) {
            case 1:
              localContext = new MulDivContext(new ExprContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPR);
              state = 28;
              if (!(precedencePredicate(context, 5))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 5)");
              state = 29;
              _la = inputSource.lookAhead(1);
              if (!(_la == MUL || _la == DIV)) {
                errorHandler.recoverInline(this);
              }
              consume();
              state = 30; 
              expr(6);
              break;
            case 2:
              localContext = new AddSubContext(new ExprContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPR);
              state = 31;
              if (!(precedencePredicate(context, 4))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 4)");
              state = 32;
              _la = inputSource.lookAhead(1);
              if (!(_la == ADD || _la == SUB)) {
                errorHandler.recoverInline(this);
              }
              consume();
              state = 33; 
              expr(5);
              break;
          } 
        }
        state = 38;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 3, context);
      }
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
  	errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return localContext;
  }

  bool semanticPredicate(RuleContext localContext, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 2: return _exprSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _exprSemanticPredicate(ExprContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return precedencePredicate(context, 5);
      case 1: return precedencePredicate(context, 4);
    }
    return true;
  }
}

class ProgContext extends ParserRuleContext {

  ProgContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => AmbigLRParser.RULE_PROG;

  StatContext getStat() => getRuleContext((c) => c is StatContext, 0);
}

class StatContext extends ParserRuleContext {

  StatContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => AmbigLRParser.RULE_STAT;
 
  StatContext.from(StatContext context) : super.from(context) {
  }
}

class ExprContext extends ParserRuleContext {

  ExprContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => AmbigLRParser.RULE_EXPR;
 
  ExprContext.from(ExprContext context) : super.from(context) {
  }
}

class AssignContext extends StatContext {
  TerminalNode getNEWLINE() => getToken(AmbigLRParser.NEWLINE, 0);
  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);
  TerminalNode getID() => getToken(AmbigLRParser.ID, 0);
  AssignContext(StatContext context) : super.from(context);
}

class BlankContext extends StatContext {
  TerminalNode getNEWLINE() => getToken(AmbigLRParser.NEWLINE, 0);
  BlankContext(StatContext context) : super.from(context);
}

class PrintExprContext extends StatContext {
  TerminalNode getNEWLINE() => getToken(AmbigLRParser.NEWLINE, 0);
  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);
  PrintExprContext(StatContext context) : super.from(context);
}class IdContext extends ExprContext {
  TerminalNode getID() => getToken(AmbigLRParser.ID, 0);
  IdContext(ExprContext context) : super.from(context);
}

class IntContext extends ExprContext {
  TerminalNode getINT() => getToken(AmbigLRParser.INT, 0);
  IntContext(ExprContext context) : super.from(context);
}

class AddSubContext extends ExprContext {
  List<ExprContext> getExprs() => getRuleContexts((c) => c is ExprContext);
  ExprContext getExpr(int i) => getRuleContext((c) => c is ExprContext, i);
  AddSubContext(ExprContext context) : super.from(context);
}

class ParensContext extends ExprContext {
  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);
  ParensContext(ExprContext context) : super.from(context);
}

class MulDivContext extends ExprContext {
  List<ExprContext> getExprs() => getRuleContexts((c) => c is ExprContext);
  ExprContext getExpr(int i) => getRuleContext((c) => c is ExprContext, i);
  MulDivContext(ExprContext context) : super.from(context);
}