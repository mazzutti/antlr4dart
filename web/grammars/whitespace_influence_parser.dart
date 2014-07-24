// Generated from WhitespaceInfluence.g by antlr4dart
part of whitespace_influence;

class WhitespaceInfluenceParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_PROG = 0, RULE_EXPRESSION = 1;

  static const int T__19 = 1, T__18 = 2, T__17 = 3, T__16 = 4, T__15 = 5, 
                   T__14 = 6, T__13 = 7, T__12 = 8, T__11 = 9, T__10 = 10, 
                   T__9 = 11, T__8 = 12, T__7 = 13, T__6 = 14, T__5 = 15, 
                   T__4 = 16, T__3 = 17, T__2 = 18, T__1 = 19, T__0 = 20, 
                   ID = 21, NUMBER = 22, DATE = 23, SQ_STRING = 24, DQ_STRING = 25, 
                   WS = 26, COMMENTS = 27, K_TRUE = 28, K_FALSE = 29, K_NULL = 30, 
                   K_AND = 31, K_OR = 32, K_IN = 33;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x23\x71\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x07\x03\x16\x0a\x03\x0c"
  	"\x03\x0e\x03\x19\x0b\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x07\x03\x25\x0a\x03\x0c\x03\x0e"
  	"\x03\x28\x0b\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x05\x03\x33\x0a\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x07\x03\x65\x0a\x03\x0c\x03\x0e\x03\x68\x0b\x03\x03"
  	"\x03\x03\x03\x07\x03\x6c\x0a\x03\x0c\x03\x0e\x03\x6f\x0b\x03\x03\x03"
  	"\x02\x03\x04\x04\x02\x04\x02\x04\x04\x02\x06\x06\x21\x21\x04\x02\x15"
  	"\x15\x22\x22\x8c\x02\x06\x03\x02\x02\x02\x04\x32\x03\x02\x02\x02\x06"
  	"\x07\x05\x04\x03\x02\x07\x08\x07\x02\x02\x03\x08\x03\x03\x02\x02\x02"
  	"\x09\x0a\x08\x03\x01\x02\x0a\x0b\x07\x16\x02\x02\x0b\x33\x05\x04\x03"
  	"\x1c\x0c\x0d\x07\x0b\x02\x02\x0d\x33\x05\x04\x03\x1b\x0e\x0f\x07\x09"
  	"\x02\x02\x0f\x33\x05\x04\x03\x1a\x10\x11\x07\x17\x02\x02\x11\x12\x07"
  	"\x0d\x02\x02\x12\x17\x05\x04\x03\x02\x13\x14\x07\x08\x02\x02\x14\x16"
  	"\x05\x04\x03\x02\x15\x13\x03\x02\x02\x02\x16\x19\x03\x02\x02\x02\x17"
  	"\x15\x03\x02\x02\x02\x17\x18\x03\x02\x02\x02\x18\x1a\x03\x02\x02\x02"
  	"\x19\x17\x03\x02\x02\x02\x1a\x1b\x07\x07\x02\x02\x1b\x33\x03\x02\x02"
  	"\x02\x1c\x1d\x07\x0d\x02\x02\x1d\x1e\x05\x04\x03\x02\x1e\x1f\x07\x07"
  	"\x02\x02\x1f\x33\x03\x02\x02\x02\x20\x21\x07\x0c\x02\x02\x21\x26\x05"
  	"\x04\x03\x02\x22\x23\x07\x08\x02\x02\x23\x25\x05\x04\x03\x02\x24\x22"
  	"\x03\x02\x02\x02\x25\x28\x03\x02\x02\x02\x26\x24\x03\x02\x02\x02\x26"
  	"\x27\x03\x02\x02\x02\x27\x29\x03\x02\x02\x02\x28\x26\x03\x02\x02\x02"
  	"\x29\x2a\x07\x04\x02\x02\x2a\x33\x03\x02\x02\x02\x2b\x33\x07\x1e\x02"
  	"\x02\x2c\x33\x07\x1f\x02\x02\x2d\x33\x07\x18\x02\x02\x2e\x33\x07\x19"
  	"\x02\x02\x2f\x33\x07\x17\x02\x02\x30\x33\x07\x1a\x02\x02\x31\x33\x07"
  	"\x20\x02\x02\x32\x09\x03\x02\x02\x02\x32\x0c\x03\x02\x02\x02\x32\x0e"
  	"\x03\x02\x02\x02\x32\x10\x03\x02\x02\x02\x32\x1c\x03\x02\x02\x02\x32"
  	"\x20\x03\x02\x02\x02\x32\x2b\x03\x02\x02\x02\x32\x2c\x03\x02\x02\x02"
  	"\x32\x2d\x03\x02\x02\x02\x32\x2e\x03\x02\x02\x02\x32\x2f\x03\x02\x02"
  	"\x02\x32\x30\x03\x02\x02\x02\x32\x31\x03\x02\x02\x02\x33\x6d\x03\x02"
  	"\x02\x02\x34\x35\x0c\x19\x02\x02\x35\x36\x07\x05\x02\x02\x36\x6c\x05"
  	"\x04\x03\x1a\x37\x38\x0c\x18\x02\x02\x38\x39\x07\x0a\x02\x02\x39\x6c"
  	"\x05\x04\x03\x19\x3a\x3b\x0c\x17\x02\x02\x3b\x3c\x07\x13\x02\x02\x3c"
  	"\x6c\x05\x04\x03\x18\x3d\x3e\x0c\x16\x02\x02\x3e\x3f\x07\x03\x02\x02"
  	"\x3f\x6c\x05\x04\x03\x17\x40\x41\x0c\x15\x02\x02\x41\x42\x07\x0b\x02"
  	"\x02\x42\x6c\x05\x04\x03\x16\x43\x44\x0c\x14\x02\x02\x44\x45\x07\x09"
  	"\x02\x02\x45\x6c\x05\x04\x03\x15\x46\x47\x0c\x13\x02\x02\x47\x48\x07"
  	"\x0f\x02\x02\x48\x6c\x05\x04\x03\x14\x49\x4a\x0c\x12\x02\x02\x4a\x4b"
  	"\x07\x10\x02\x02\x4b\x6c\x05\x04\x03\x13\x4c\x4d\x0c\x11\x02\x02\x4d"
  	"\x4e\x07\x12\x02\x02\x4e\x6c\x05\x04\x03\x12\x4f\x50\x0c\x10\x02\x02"
  	"\x50\x51\x07\x14\x02\x02\x51\x6c\x05\x04\x03\x11\x52\x53\x0c\x0f\x02"
  	"\x02\x53\x54\x07\x0e\x02\x02\x54\x6c\x05\x04\x03\x10\x55\x56\x0c\x0e"
  	"\x02\x02\x56\x57\x07\x11\x02\x02\x57\x6c\x05\x04\x03\x0f\x58\x59\x0c"
  	"\x0c\x02\x02\x59\x5a\x09\x02\x02\x02\x5a\x6c\x05\x04\x03\x0d\x5b\x5c"
  	"\x0c\x0b\x02\x02\x5c\x5d\x09\x03\x02\x02\x5d\x6c\x05\x04\x03\x0c\x5e"
  	"\x5f\x0c\x0d\x02\x02\x5f\x60\x07\x23\x02\x02\x60\x61\x07\x0d\x02\x02"
  	"\x61\x66\x05\x04\x03\x02\x62\x63\x07\x08\x02\x02\x63\x65\x05\x04\x03"
  	"\x02\x64\x62\x03\x02\x02\x02\x65\x68\x03\x02\x02\x02\x66\x64\x03\x02"
  	"\x02\x02\x66\x67\x03\x02\x02\x02\x67\x69\x03\x02\x02\x02\x68\x66\x03"
  	"\x02\x02\x02\x69\x6a\x07\x07\x02\x02\x6a\x6c\x03\x02\x02\x02\x6b\x34"
  	"\x03\x02\x02\x02\x6b\x37\x03\x02\x02\x02\x6b\x3a\x03\x02\x02\x02\x6b"
  	"\x3d\x03\x02\x02\x02\x6b\x40\x03\x02\x02\x02\x6b\x43\x03\x02\x02\x02"
  	"\x6b\x46\x03\x02\x02\x02\x6b\x49\x03\x02\x02\x02\x6b\x4c\x03\x02\x02"
  	"\x02\x6b\x4f\x03\x02\x02\x02\x6b\x52\x03\x02\x02\x02\x6b\x55\x03\x02"
  	"\x02\x02\x6b\x58\x03\x02\x02\x02\x6b\x5b\x03\x02\x02\x02\x6b\x5e\x03"
  	"\x02\x02\x02\x6c\x6f\x03\x02\x02\x02\x6d\x6b\x03\x02\x02\x02\x6d\x6e"
  	"\x03\x02\x02\x02\x6e\x05\x03\x02\x02\x02\x6f\x6d\x03\x02\x02\x02\x08"
  	"\x17\x26\x32\x66\x6b\x6d";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'%'", "']'", "'^'", "'&'", "')'", "','", "'+'", "'*'", 
    "'-'", "'['", "'('", "'<'", "'='", "'!='", "'<='", "'>'", "'/'", "'>='", 
    "'|'", "'!'", "ID", "NUMBER", "DATE", "SQ_STRING", "DQ_STRING", "WS", 
    "COMMENTS", "K_TRUE", "K_FALSE", "K_NULL", "K_AND", "K_OR", "K_IN"
  ];

  final List<String> ruleNames = [
    "prog", "expression"
  ];

  List log = new List();

  WhitespaceInfluenceParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "WhitespaceInfluence.g";
  ProgContext prog() {
    var localContext = new ProgContext(context, state);
    enterRule(localContext, 0, RULE_PROG);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      expression(0);
      state = 5; 
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
  ExpressionContext expression([int _p = 0]) {
    var _parentctx = context;
    int _parentState = state;
    var localContext = new ExpressionContext(context, _parentState);
    var _prevctx = localContext;
    int _startState = 2;
    enterRecursionRule(localContext, 2, RULE_EXPRESSION, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(localContext, 1);
      state = 48;
      switch (interpreter.adaptivePredict(inputSource, 2, context)) {
        case 1:
          localContext = new DoNotContext(localContext);
          context = localContext;
          _prevctx = localContext;

          state = 8; 
          match(T__0);
          state = 9; 
          expression(26);
          break;
        case 2:
          localContext = new DoNegateContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 10; 
          match(T__11);
          state = 11; 
          expression(25);
          break;
        case 3:
          localContext = new DoPositivContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 12; 
          match(T__13);
          state = 13; 
          expression(24);
          break;
        case 4:
          localContext = new DoFunctionContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 14; 
          match(ID);
          state = 15; 
          match(T__9);
          state = 16; 
          expression(0);
          state = 21;
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
          while (_la == T__14) {
            state = 17; 
            match(T__14);
            state = 18; 
            expression(0);
            state = 23;
            errorHandler.sync(this);
            _la = inputSource.lookAhead(1);
          }
          state = 24; 
          match(T__15);
          break;
        case 5:
          localContext = new DoParenthesisContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 26; 
          match(T__9);
          state = 27; 
          expression(0);
          state = 28; 
          match(T__15);
          break;
        case 6:
          localContext = new NewArrayContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 30; 
          match(T__10);
          state = 31; 
          expression(0);
          state = 36;
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
          while (_la == T__14) {
            state = 32; 
            match(T__14);
            state = 33; 
            expression(0);
            state = 38;
            errorHandler.sync(this);
            _la = inputSource.lookAhead(1);
          }
          state = 39; 
          match(T__18);
          break;
        case 7:
          localContext = new NewTrueBooleanContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 41; 
          match(K_TRUE);
          break;
        case 8:
          localContext = new NewFalseBooleanContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 42; 
          match(K_FALSE);
          break;
        case 9:
          localContext = new NewNumberContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 43; 
          match(NUMBER);
          break;
        case 10:
          localContext = new NewDateTimeContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 44; 
          match(DATE);
          break;
        case 11:
          localContext = new NewIdentifierContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 45; 
          match(ID);
          break;
        case 12:
          localContext = new NewStringContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 46; 
          match(SQ_STRING);
          break;
        case 13:
          localContext = new NewNullContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 47; 
          match(K_NULL);
          break;
      }
      context.stop = inputSource.lookToken(-1);
      state = 107;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 5, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          state = 105;
          switch (interpreter.adaptivePredict(inputSource, 4, context)) {
            case 1:
              localContext = new DoPowerContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 50;
              if (!(precedencePredicate(context, 23))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 23)");
              state = 51; 
              match(T__17);
              state = 52; 
              expression(24);
              break;
            case 2:
              localContext = new DoMultipyContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 53;
              if (!(precedencePredicate(context, 22))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 22)");
              state = 54; 
              match(T__12);
              state = 55; 
              expression(23);
              break;
            case 3:
              localContext = new DoDivideContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 56;
              if (!(precedencePredicate(context, 21))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 21)");
              state = 57; 
              match(T__3);
              state = 58; 
              expression(22);
              break;
            case 4:
              localContext = new DoModuloContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 59;
              if (!(precedencePredicate(context, 20))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 20)");
              state = 60; 
              match(T__19);
              state = 61; 
              expression(21);
              break;
            case 5:
              localContext = new DoMinusContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 62;
              if (!(precedencePredicate(context, 19))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 19)");
              state = 63; 
              match(T__11);
              state = 64; 
              expression(20);
              break;
            case 6:
              localContext = new DoPlusContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 65;
              if (!(precedencePredicate(context, 18))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 18)");
              state = 66; 
              match(T__13);
              state = 67; 
              expression(19);
              break;
            case 7:
              localContext = new DoEqualContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 68;
              if (!(precedencePredicate(context, 17))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 17)");
              state = 69; 
              match(T__7);
              state = 70; 
              expression(18);
              break;
            case 8:
              localContext = new DoNotEqualContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 71;
              if (!(precedencePredicate(context, 16))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 16)");
              state = 72; 
              match(T__6);
              state = 73; 
              expression(17);
              break;
            case 9:
              localContext = new DoGreatherContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 74;
              if (!(precedencePredicate(context, 15))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 15)");
              state = 75; 
              match(T__4);
              state = 76; 
              expression(16);
              break;
            case 10:
              localContext = new DoGreatherEqualContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 77;
              if (!(precedencePredicate(context, 14))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 14)");
              state = 78; 
              match(T__2);
              state = 79; 
              expression(15);
              break;
            case 11:
              localContext = new DoLesserContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 80;
              if (!(precedencePredicate(context, 13))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 13)");
              state = 81; 
              match(T__8);
              state = 82; 
              expression(14);
              break;
            case 12:
              localContext = new DoLesserEqualContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 83;
              if (!(precedencePredicate(context, 12))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 12)");
              state = 84; 
              match(T__5);
              state = 85; 
              expression(13);
              break;
            case 13:
              localContext = new DoAndContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 86;
              if (!(precedencePredicate(context, 10))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 10)");
              state = 87;
              _la = inputSource.lookAhead(1);
              if (!(_la == T__16 || _la == K_AND)) {
                errorHandler.recoverInline(this);
              }
              consume();
              state = 88; 
              expression(11);
              break;
            case 14:
              localContext = new DoOrContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 89;
              if (!(precedencePredicate(context, 9))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 9)");
              state = 90;
              _la = inputSource.lookAhead(1);
              if (!(_la == T__1 || _la == K_OR)) {
                errorHandler.recoverInline(this);
              }
              consume();
              state = 91; 
              expression(10);
              break;
            case 15:
              localContext = new DoInContext(new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_EXPRESSION);
              state = 92;
              if (!(precedencePredicate(context, 11))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 11)");
              state = 93; 
              match(K_IN);
              state = 94; 
              match(T__9);
              state = 95; 
              expression(0);
              state = 100;
              errorHandler.sync(this);
              _la = inputSource.lookAhead(1);
              while (_la == T__14) {
                state = 96; 
                match(T__14);
                state = 97; 
                expression(0);
                state = 102;
                errorHandler.sync(this);
                _la = inputSource.lookAhead(1);
              }
              state = 103; 
              match(T__15);
              break;
          } 
        }
        state = 109;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 5, context);
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
      case 1: return _expressionSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _expressionSemanticPredicate(ExpressionContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return precedencePredicate(context, 23);
      case 1: return precedencePredicate(context, 22);
      case 2: return precedencePredicate(context, 21);
      case 3: return precedencePredicate(context, 20);
      case 4: return precedencePredicate(context, 19);
      case 5: return precedencePredicate(context, 18);
      case 6: return precedencePredicate(context, 17);
      case 7: return precedencePredicate(context, 16);
      case 8: return precedencePredicate(context, 15);
      case 9: return precedencePredicate(context, 14);
      case 10: return precedencePredicate(context, 13);
      case 11: return precedencePredicate(context, 12);
      case 12: return precedencePredicate(context, 10);
      case 13: return precedencePredicate(context, 9);
      case 14: return precedencePredicate(context, 11);
    }
    return true;
  }
}

class ProgContext extends ParserRuleContext {

  ProgContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => WhitespaceInfluenceParser.RULE_PROG;

  TerminalNode getEOF() => getToken(WhitespaceInfluenceParser.EOF, 0);

  ExpressionContext getExpression() => getRuleContext((c) => c is ExpressionContext, 0);
}

class ExpressionContext extends ParserRuleContext {

  ExpressionContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => WhitespaceInfluenceParser.RULE_EXPRESSION;
 
  ExpressionContext.from(ExpressionContext context) : super.from(context) {
  }
}

class DoAndContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  TerminalNode getK_AND() => getToken(WhitespaceInfluenceParser.K_AND, 0);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoAndContext(ExpressionContext context) : super.from(context);
}

class DoInContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  TerminalNode getK_IN() => getToken(WhitespaceInfluenceParser.K_IN, 0);
  DoInContext(ExpressionContext context) : super.from(context);
}

class DoPowerContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoPowerContext(ExpressionContext context) : super.from(context);
}

class NewArrayContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  NewArrayContext(ExpressionContext context) : super.from(context);
}

class DoPositivContext extends ExpressionContext {
  ExpressionContext getExpression() => getRuleContext((c) => c is ExpressionContext, 0);
  DoPositivContext(ExpressionContext context) : super.from(context);
}

class DoMinusContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoMinusContext(ExpressionContext context) : super.from(context);
}

class NewDateTimeContext extends ExpressionContext {
  TerminalNode getDATE() => getToken(WhitespaceInfluenceParser.DATE, 0);
  NewDateTimeContext(ExpressionContext context) : super.from(context);
}

class NewTrueBooleanContext extends ExpressionContext {
  TerminalNode getK_TRUE() => getToken(WhitespaceInfluenceParser.K_TRUE, 0);
  NewTrueBooleanContext(ExpressionContext context) : super.from(context);
}

class DoModuloContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoModuloContext(ExpressionContext context) : super.from(context);
}

class DoGreatherEqualContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoGreatherEqualContext(ExpressionContext context) : super.from(context);
}

class DoLesserEqualContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoLesserEqualContext(ExpressionContext context) : super.from(context);
}

class DoGreatherContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoGreatherContext(ExpressionContext context) : super.from(context);
}

class DoNotContext extends ExpressionContext {
  ExpressionContext getExpression() => getRuleContext((c) => c is ExpressionContext, 0);
  DoNotContext(ExpressionContext context) : super.from(context);
}

class DoOrContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  TerminalNode getK_OR() => getToken(WhitespaceInfluenceParser.K_OR, 0);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoOrContext(ExpressionContext context) : super.from(context);
}

class DoPlusContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoPlusContext(ExpressionContext context) : super.from(context);
}

class DoLesserContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoLesserContext(ExpressionContext context) : super.from(context);
}

class NewStringContext extends ExpressionContext {
  TerminalNode getSQ_STRING() => getToken(WhitespaceInfluenceParser.SQ_STRING, 0);
  NewStringContext(ExpressionContext context) : super.from(context);
}

class DoDivideContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoDivideContext(ExpressionContext context) : super.from(context);
}

class DoEqualContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoEqualContext(ExpressionContext context) : super.from(context);
}

class DoNotEqualContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoNotEqualContext(ExpressionContext context) : super.from(context);
}

class DoNegateContext extends ExpressionContext {
  ExpressionContext getExpression() => getRuleContext((c) => c is ExpressionContext, 0);
  DoNegateContext(ExpressionContext context) : super.from(context);
}

class NewIdentifierContext extends ExpressionContext {
  TerminalNode getID() => getToken(WhitespaceInfluenceParser.ID, 0);
  NewIdentifierContext(ExpressionContext context) : super.from(context);
}

class DoFunctionContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  TerminalNode getID() => getToken(WhitespaceInfluenceParser.ID, 0);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoFunctionContext(ExpressionContext context) : super.from(context);
}

class NewFalseBooleanContext extends ExpressionContext {
  TerminalNode getK_FALSE() => getToken(WhitespaceInfluenceParser.K_FALSE, 0);
  NewFalseBooleanContext(ExpressionContext context) : super.from(context);
}

class DoParenthesisContext extends ExpressionContext {
  ExpressionContext getExpression() => getRuleContext((c) => c is ExpressionContext, 0);
  DoParenthesisContext(ExpressionContext context) : super.from(context);
}

class DoMultipyContext extends ExpressionContext {
  ExpressionContext getExpression(int i) => getRuleContext((c) => c is ExpressionContext, i);
  List<ExpressionContext> getExpressions() => getRuleContexts((c) => c is ExpressionContext);
  DoMultipyContext(ExpressionContext context) : super.from(context);
}

class NewNullContext extends ExpressionContext {
  TerminalNode getK_NULL() => getToken(WhitespaceInfluenceParser.K_NULL, 0);
  NewNullContext(ExpressionContext context) : super.from(context);
}

class NewNumberContext extends ExpressionContext {
  TerminalNode getNUMBER() => getToken(WhitespaceInfluenceParser.NUMBER, 0);
  NewNumberContext(ExpressionContext context) : super.from(context);
}