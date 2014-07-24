// Generated from ReturnValueAndActions2.g by antlr4dart
part of return_value_and_actions2;

class ReturnValueAndActions2Parser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_E = 1;

  static const int T__5 = 1, T__4 = 2, T__3 = 3, T__2 = 4, T__1 = 5, T__0 = 6, 
                   ID = 7, INT = 8, WS = 9;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x0b\x2a\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x05\x03\x14\x0a\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x07\x03\x25\x0a\x03\x0c\x03\x0e\x03"
  	"\x28\x0b\x03\x03\x03\x02\x03\x04\x04\x02\x04\x02\x02\x2d\x02\x06\x03"
  	"\x02\x02\x02\x04\x13\x03\x02\x02\x02\x06\x07\x05\x04\x03\x02\x07\x08"
  	"\x08\x02\x01\x02\x08\x03\x03\x02\x02\x02\x09\x0a\x08\x03\x01\x02\x0a"
  	"\x0b\x07\x0a\x02\x02\x0b\x14\x08\x03\x01\x02\x0c\x0d\x07\x06\x02\x02"
  	"\x0d\x0e\x05\x04\x03\x02\x0e\x0f\x07\x03\x02\x02\x0f\x10\x08\x03\x01"
  	"\x02\x10\x14\x03\x02\x02\x02\x11\x12\x07\x09\x02\x02\x12\x14\x08\x03"
  	"\x01\x02\x13\x09\x03\x02\x02\x02\x13\x0c\x03\x02\x02\x02\x13\x11\x03"
  	"\x02\x02\x02\x14\x26\x03\x02\x02\x02\x15\x16\x0c\x09\x02\x02\x16\x17"
  	"\x07\x05\x02\x02\x17\x18\x05\x04\x03\x0a\x18\x19\x08\x03\x01\x02\x19"
  	"\x25\x03\x02\x02\x02\x1a\x1b\x0c\x08\x02\x02\x1b\x1c\x07\x04\x02\x02"
  	"\x1c\x1d\x05\x04\x03\x09\x1d\x1e\x08\x03\x01\x02\x1e\x25\x03\x02\x02"
  	"\x02\x1f\x20\x0c\x05\x02\x02\x20\x21\x07\x08\x02\x02\x21\x25\x08\x03"
  	"\x01\x02\x22\x23\x0c\x04\x02\x02\x23\x25\x07\x07\x02\x02\x24\x15\x03"
  	"\x02\x02\x02\x24\x1a\x03\x02\x02\x02\x24\x1f\x03\x02\x02\x02\x24\x22"
  	"\x03\x02\x02\x02\x25\x28\x03\x02\x02\x02\x26\x24\x03\x02\x02\x02\x26"
  	"\x27\x03\x02\x02\x02\x27\x05\x03\x02\x02\x02\x28\x26\x03\x02\x02\x02"
  	"\x05\x13\x24\x26";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "')'", "'+'", "'*'", "'('", "'--'", "'++'", "ID", "INT", 
    "WS"
  ];

  final List<String> ruleNames = [
    "s", "e"
  ];

  List log = new List();

  ReturnValueAndActions2Parser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "ReturnValueAndActions2.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      localContext.q = localContext.e = e(0);
      log.add(localContext.e.v);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  EContext e([int _p = 0]) {
    var _parentctx = context;
    int _parentState = state;
    var localContext = new EContext(context, _parentState);
    var _prevctx = localContext;
    int _startState = 2;
    enterRecursionRule(localContext, 2, RULE_E, _p);
    try {
      int _alt;
      enterOuterAlt(localContext, 1);
      state = 17;
      switch (inputSource.lookAhead(1)) {
        case INT: 
          localContext = new AnIntContext(localContext);
          context = localContext;
          _prevctx = localContext;

          state = 8; 
          localContext.INT = match(INT);
          localContext.v =  localContext.INT != null ? int.parse(localContext.INT.text) : 0; 
          break;
        case T__2: 
          localContext = new ParensContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 10; 
          match(T__2);
          state = 11; 
          localContext.x = e(0);
          state = 12; 
          match(T__5);
          localContext.v =  localContext.x.v; 
          break;
        case ID: 
          localContext = new AnIDContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 15; 
          match(ID);
          localContext.v =  3; 
          break;
        default: throw new NoViableAltException(this);
      }
      context.stop = inputSource.lookToken(-1);
      state = 36;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 2, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          state = 34;
          switch (interpreter.adaptivePredict(inputSource, 1, context)) {
            case 1:
              localContext = new MultContext(new EContext(_parentctx, _parentState));
              localContext.a = _prevctx;
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 19;
              if (!(precedencePredicate(context, 7))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 7)");
              state = 20; 
              localContext.op = match(T__3);
              state = 21; 
              localContext.b = e(8);
              localContext.v =  localContext.a.v * localContext.b.v;
              break;
            case 2:
              localContext = new AddContext(new EContext(_parentctx, _parentState));
              localContext.a = _prevctx;
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 24;
              if (!(precedencePredicate(context, 6))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 6)");
              state = 25; 
              match(T__4);
              state = 26; 
              localContext.b = e(7);
              localContext.v =  localContext.a.v + localContext.b.v;
              break;
            case 3:
              localContext = new IncContext(new EContext(_parentctx, _parentState));
              localContext.x = _prevctx;
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 29;
              if (!(precedencePredicate(context, 3))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 3)");
              state = 30; 
              match(T__0);
              localContext.v =  localContext.x.v+1;
              break;
            case 4:
              localContext = new DecContext(new EContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 32;
              if (!(precedencePredicate(context, 2))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 2)");
              state = 33; 
              match(T__1);
              break;
          } 
        }
        state = 38;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 2, context);
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
      case 1: return _eSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _eSemanticPredicate(EContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return precedencePredicate(context, 7);
      case 1: return precedencePredicate(context, 6);
      case 2: return precedencePredicate(context, 3);
      case 3: return precedencePredicate(context, 2);
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  EContext q;
  EContext e;

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ReturnValueAndActions2Parser.RULE_S;

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class EContext extends ParserRuleContext {

  int v;

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ReturnValueAndActions2Parser.RULE_E;
 
  EContext.from(EContext context) : super.from(context) {
  }
}

class MultContext extends EContext {
  EContext a;
  Token op;
  EContext b;
  EContext getE(int i) => getRuleContext((c) => c is EContext, i);
  List<EContext> getEs() => getRuleContexts((c) => c is EContext);
  MultContext(EContext context) : super.from(context);
}

class DecContext extends EContext {
  EContext getE() => getRuleContext((c) => c is EContext, 0);
  DecContext(EContext context) : super.from(context);
}

class IncContext extends EContext {
  EContext x;
  EContext getE() => getRuleContext((c) => c is EContext, 0);
  IncContext(EContext context) : super.from(context);
}

class AnIDContext extends EContext {
  TerminalNode getID() => getToken(ReturnValueAndActions2Parser.ID, 0);
  AnIDContext(EContext context) : super.from(context);
}

class ParensContext extends EContext {
  EContext x;
  EContext getE() => getRuleContext((c) => c is EContext, 0);
  ParensContext(EContext context) : super.from(context);
}

class AddContext extends EContext {
  EContext a;
  EContext b;
  EContext getE(int i) => getRuleContext((c) => c is EContext, i);
  List<EContext> getEs() => getRuleContexts((c) => c is EContext);
  AddContext(EContext context) : super.from(context);
}

class AnIntContext extends EContext {
  Token INT;
  TerminalNode getINT() => getToken(ReturnValueAndActions2Parser.INT, 0);
  AnIntContext(EContext context) : super.from(context);
}