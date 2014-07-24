// Generated from Declarations.g by antlr4dart
part of declarations;

class DeclarationsParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_DECLARATOR = 1, RULE_E = 2;

  static const int T__4 = 1, T__3 = 2, T__2 = 3, T__1 = 4, T__0 = 5, ID = 6, 
                   INT = 7, WS = 8;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x0a\x28\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x05\x03\x14\x0a\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x07\x03\x21\x0a\x03\x0c\x03\x0e\x03\x24\x0b\x03\x03\x04\x03\x04\x03"
  	"\x04\x02\x03\x04\x05\x02\x04\x06\x02\x02\x29\x02\x08\x03\x02\x02\x02"
  	"\x04\x13\x03\x02\x02\x02\x06\x25\x03\x02\x02\x02\x08\x09\x05\x04\x03"
  	"\x02\x09\x0a\x07\x02\x02\x03\x0a\x03\x03\x02\x02\x02\x0b\x0c\x08\x03"
  	"\x01\x02\x0c\x0d\x07\x06\x02\x02\x0d\x14\x05\x04\x03\x05\x0e\x0f\x07"
  	"\x07\x02\x02\x0f\x10\x05\x04\x03\x02\x10\x11\x07\x04\x02\x02\x11\x14"
  	"\x03\x02\x02\x02\x12\x14\x07\x08\x02\x02\x13\x0b\x03\x02\x02\x02\x13"
  	"\x0e\x03\x02\x02\x02\x13\x12\x03\x02\x02\x02\x14\x22\x03\x02\x02\x02"
  	"\x15\x16\x0c\x08\x02\x02\x16\x17\x07\x05\x02\x02\x17\x18\x05\x06\x04"
  	"\x02\x18\x19\x07\x03\x02\x02\x19\x21\x03\x02\x02\x02\x1a\x1b\x0c\x07"
  	"\x02\x02\x1b\x1c\x07\x05\x02\x02\x1c\x21\x07\x03\x02\x02\x1d\x1e\x0c"
  	"\x06\x02\x02\x1e\x1f\x07\x07\x02\x02\x1f\x21\x07\x04\x02\x02\x20\x15"
  	"\x03\x02\x02\x02\x20\x1a\x03\x02\x02\x02\x20\x1d\x03\x02\x02\x02\x21"
  	"\x24\x03\x02\x02\x02\x22\x20\x03\x02\x02\x02\x22\x23\x03\x02\x02\x02"
  	"\x23\x05\x03\x02\x02\x02\x24\x22\x03\x02\x02\x02\x25\x26\x07\x09\x02"
  	"\x02\x26\x07\x03\x02\x02\x02\x05\x13\x20\x22";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "']'", "')'", "'['", "'*'", "'('", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "declarator", "e"
  ];

  List log = new List();

  DeclarationsParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Declarations.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 6; 
      declarator(0);
      state = 7; 
      match(EOF);
      log.add(localContext.toString(this));
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  DeclaratorContext declarator([int _p = 0]) {
    var _parentctx = context;
    int _parentState = state;
    var localContext = new DeclaratorContext(context, _parentState);
    var _prevctx = localContext;
    int _startState = 2;
    enterRecursionRule(localContext, 2, RULE_DECLARATOR, _p);
    try {
      int _alt;
      enterOuterAlt(localContext, 1);
      state = 17;
      switch (inputSource.lookAhead(1)) {
        case T__1: 
          state = 10; 
          match(T__1);
          state = 11; 
          declarator(3); 
          break;
        case T__0: 
          state = 12; 
          match(T__0);
          state = 13; 
          declarator(0);
          state = 14; 
          match(T__3); 
          break;
        case ID: 
          state = 16; 
          match(ID); 
          break;
        default: throw new NoViableAltException(this);
      }
      context.stop = inputSource.lookToken(-1);
      state = 32;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 2, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          state = 30;
          switch (interpreter.adaptivePredict(inputSource, 1, context)) {
            case 1:
              localContext = new DeclaratorContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_DECLARATOR);
              state = 19;
              if (!(precedencePredicate(context, 6))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 6)");
              state = 20; 
              match(T__2);
              state = 21; 
              e();
              state = 22; 
              match(T__4);
              break;
            case 2:
              localContext = new DeclaratorContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_DECLARATOR);
              state = 24;
              if (!(precedencePredicate(context, 5))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 5)");
              state = 25; 
              match(T__2);
              state = 26; 
              match(T__4);
              break;
            case 3:
              localContext = new DeclaratorContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_DECLARATOR);
              state = 27;
              if (!(precedencePredicate(context, 4))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 4)");
              state = 28; 
              match(T__0);
              state = 29; 
              match(T__3);
              break;
          } 
        }
        state = 34;
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
  EContext e() {
    var localContext = new EContext(context, state);
    enterRule(localContext, 4, RULE_E);
    try {
      enterOuterAlt(localContext, 1);
      state = 35; 
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

  bool semanticPredicate(RuleContext localContext, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 1: return _declaratorSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _declaratorSemanticPredicate(DeclaratorContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return precedencePredicate(context, 6);
      case 1: return precedencePredicate(context, 5);
      case 2: return precedencePredicate(context, 4);
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => DeclarationsParser.RULE_S;

  TerminalNode getEOF() => getToken(DeclarationsParser.EOF, 0);

  DeclaratorContext getDeclarator() => getRuleContext((c) => c is DeclaratorContext, 0);
}

class DeclaratorContext extends ParserRuleContext {

  DeclaratorContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => DeclarationsParser.RULE_DECLARATOR;

  TerminalNode getID() => getToken(DeclarationsParser.ID, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);

  DeclaratorContext getDeclarator() => getRuleContext((c) => c is DeclaratorContext, 0);
}

class EContext extends ParserRuleContext {

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => DeclarationsParser.RULE_E;

  TerminalNode getINT() => getToken(DeclarationsParser.INT, 0);
}

