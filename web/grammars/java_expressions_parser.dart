// Generated from JavaExpressions.g by antlr4dart
part of java_expressions;

class JavaExpressionsParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_S = 0, RULE_EXPRESSIONLIST = 1, RULE_E = 2, RULE_TYPE = 3;

  static const int T__48 = 1, T__47 = 2, T__46 = 3, T__45 = 4, T__44 = 5, 
                   T__43 = 6, T__42 = 7, T__41 = 8, T__40 = 9, T__39 = 10, 
                   T__38 = 11, T__37 = 12, T__36 = 13, T__35 = 14, T__34 = 15, 
                   T__33 = 16, T__32 = 17, T__31 = 18, T__30 = 19, T__29 = 20, 
                   T__28 = 21, T__27 = 22, T__26 = 23, T__25 = 24, T__24 = 25, 
                   T__23 = 26, T__22 = 27, T__21 = 28, T__20 = 29, T__19 = 30, 
                   T__18 = 31, T__17 = 32, T__16 = 33, T__15 = 34, T__14 = 35, 
                   T__13 = 36, T__12 = 37, T__11 = 38, T__10 = 39, T__9 = 40, 
                   T__8 = 41, T__7 = 42, T__6 = 43, T__5 = 44, T__4 = 45, 
                   T__3 = 46, T__2 = 47, T__1 = 48, T__0 = 49, ID = 50, 
                   INT = 51, WS = 52;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x36\x9c\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x04\x05\x09\x05\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03"
  	"\x03\x07\x03\x11\x0a\x03\x0c\x03\x0e\x03\x14\x0b\x03\x03\x04\x03\x04"
  	"\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03"
  	"\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04"
  	"\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x05\x04\x30"
  	"\x0a\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x06\x04\x37\x0a\x04"
  	"\x0d\x04\x0e\x04\x38\x05\x04\x3b\x0a\x04\x05\x04\x3d\x0a\x04\x03\x04"
  	"\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03"
  	"\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04"
  	"\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03"
  	"\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04"
  	"\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03"
  	"\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04"
  	"\x03\x04\x05\x04\x74\x0a\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04"
  	"\x03\x04\x03\x04\x05\x04\x7d\x0a\x04\x03\x04\x03\x04\x03\x04\x03\x04"
  	"\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x05\x04\x8a"
  	"\x0a\x04\x03\x04\x07\x04\x8d\x0a\x04\x0c\x04\x0e\x04\x90\x0b\x04\x03"
  	"\x05\x03\x05\x03\x05\x03\x05\x03\x05\x03\x05\x03\x05\x03\x05\x05\x05"
  	"\x9a\x0a\x05\x03\x05\x02\x03\x06\x06\x02\x04\x06\x08\x02\x0b\x06\x02"
  	"\x07\x07\x1a\x1a\x24\x24\x28\x28\x04\x02\x14\x14\x31\x31\x05\x02\x05"
  	"\x05\x0c\x0c\x30\x30\x04\x02\x1a\x1a\x28\x28\x05\x02\x0a\x0a\x17\x17"
  	"\x25\x25\x06\x02\x06\x06\x09\x09\x2c\x2c\x32\x32\x04\x02\x08\x08\x2f"
  	"\x2f\x09\x02\x0d\x0d\x0f\x10\x15\x15\x18\x18\x1d\x1d\x20\x23\x2d\x2e"
  	"\x04\x02\x07\x07\x24\x24\xbe\x02\x0a\x03\x02\x02\x02\x04\x0d\x03\x02"
  	"\x02\x02\x06\x3c\x03\x02\x02\x02\x08\x99\x03\x02\x02\x02\x0a\x0b\x05"
  	"\x06\x04\x02\x0b\x0c\x07\x02\x02\x03\x0c\x03\x03\x02\x02\x02\x0d\x12"
  	"\x05\x06\x04\x02\x0e\x0f\x07\x19\x02\x02\x0f\x11\x05\x06\x04\x02\x10"
  	"\x0e\x03\x02\x02\x02\x11\x14\x03\x02\x02\x02\x12\x10\x03\x02\x02\x02"
  	"\x12\x13\x03\x02\x02\x02\x13\x05\x03\x02\x02\x02\x14\x12\x03\x02\x02"
  	"\x02\x15\x16\x08\x04\x01\x02\x16\x17\x07\x1c\x02\x02\x17\x18\x05\x08"
  	"\x05\x02\x18\x19\x07\x0e\x02\x02\x19\x1a\x05\x06\x04\x14\x1a\x3d\x03"
  	"\x02\x02\x02\x1b\x1c\x09\x02\x02\x02\x1c\x3d\x05\x06\x04\x11\x1d\x1e"
  	"\x09\x03\x02\x02\x1e\x3d\x05\x06\x04\x10\x1f\x20\x07\x1c\x02\x02\x20"
  	"\x21\x05\x06\x04\x02\x21\x22\x07\x0e\x02\x02\x22\x3d\x03\x02\x02\x02"
  	"\x23\x3d\x07\x2a\x02\x02\x24\x3d\x07\x0b\x02\x02\x25\x3d\x07\x35\x02"
  	"\x02\x26\x3d\x07\x34\x02\x02\x27\x28\x05\x08\x05\x02\x28\x29\x07\x27"
  	"\x02\x02\x29\x2a\x07\x12\x02\x02\x2a\x3d\x03\x02\x02\x02\x2b\x2c\x07"
  	"\x11\x02\x02\x2c\x3a\x05\x08\x05\x02\x2d\x2f\x07\x1c\x02\x02\x2e\x30"
  	"\x05\x04\x03\x02\x2f\x2e\x03\x02\x02\x02\x2f\x30\x03\x02\x02\x02\x30"
  	"\x31\x03\x02\x02\x02\x31\x3b\x07\x0e\x02\x02\x32\x33\x07\x04\x02\x02"
  	"\x33\x34\x05\x06\x04\x02\x34\x35\x07\x16\x02\x02\x35\x37\x03\x02\x02"
  	"\x02\x36\x32\x03\x02\x02\x02\x37\x38\x03\x02\x02\x02\x38\x36\x03\x02"
  	"\x02\x02\x38\x39\x03\x02\x02\x02\x39\x3b\x03\x02\x02\x02\x3a\x2d\x03"
  	"\x02\x02\x02\x3a\x36\x03\x02\x02\x02\x3b\x3d\x03\x02\x02\x02\x3c\x15"
  	"\x03\x02\x02\x02\x3c\x1b\x03\x02\x02\x02\x3c\x1d\x03\x02\x02\x02\x3c"
  	"\x1f\x03\x02\x02\x02\x3c\x23\x03\x02\x02\x02\x3c\x24\x03\x02\x02\x02"
  	"\x3c\x25\x03\x02\x02\x02\x3c\x26\x03\x02\x02\x02\x3c\x27\x03\x02\x02"
  	"\x02\x3c\x2b\x03\x02\x02\x02\x3d\x8e\x03\x02\x02\x02\x3e\x3f\x0c\x0f"
  	"\x02\x02\x3f\x40\x09\x04\x02\x02\x40\x8d\x05\x06\x04\x10\x41\x42\x0c"
  	"\x0e\x02\x02\x42\x43\x09\x05\x02\x02\x43\x8d\x05\x06\x04\x0f\x44\x45"
  	"\x0c\x0d\x02\x02\x45\x46\x09\x06\x02\x02\x46\x8d\x05\x06\x04\x0e\x47"
  	"\x48\x0c\x0c\x02\x02\x48\x49\x09\x07\x02\x02\x49\x8d\x05\x06\x04\x0d"
  	"\x4a\x4b\x0c\x0b\x02\x02\x4b\x4c\x07\x33\x02\x02\x4c\x8d\x05\x06\x04"
  	"\x0c\x4d\x4e\x0c\x0a\x02\x02\x4e\x4f\x09\x08\x02\x02\x4f\x8d\x05\x06"
  	"\x04\x0b\x50\x51\x0c\x09\x02\x02\x51\x52\x07\x03\x02\x02\x52\x8d\x05"
  	"\x06\x04\x0a\x53\x54\x0c\x08\x02\x02\x54\x55\x07\x26\x02\x02\x55\x8d"
  	"\x05\x06\x04\x09\x56\x57\x0c\x07\x02\x02\x57\x58\x07\x13\x02\x02\x58"
  	"\x8d\x05\x06\x04\x08\x59\x5a\x0c\x06\x02\x02\x5a\x5b\x07\x29\x02\x02"
  	"\x5b\x8d\x05\x06\x04\x07\x5c\x5d\x0c\x05\x02\x02\x5d\x5e\x07\x2b\x02"
  	"\x02\x5e\x8d\x05\x06\x04\x06\x5f\x60\x0c\x04\x02\x02\x60\x61\x07\x1f"
  	"\x02\x02\x61\x62\x05\x06\x04\x02\x62\x63\x07\x1b\x02\x02\x63\x64\x05"
  	"\x06\x04\x05\x64\x8d\x03\x02\x02\x02\x65\x66\x0c\x03\x02\x02\x66\x67"
  	"\x09\x09\x02\x02\x67\x8d\x05\x06\x04\x04\x68\x69\x0c\x1a\x02\x02\x69"
  	"\x6a\x07\x27\x02\x02\x6a\x8d\x07\x34\x02\x02\x6b\x6c\x0c\x19\x02\x02"
  	"\x6c\x6d\x07\x27\x02\x02\x6d\x8d\x07\x2a\x02\x02\x6e\x6f\x0c\x18\x02"
  	"\x02\x6f\x70\x07\x27\x02\x02\x70\x71\x07\x0b\x02\x02\x71\x73\x07\x1c"
  	"\x02\x02\x72\x74\x05\x04\x03\x02\x73\x72\x03\x02\x02\x02\x73\x74\x03"
  	"\x02\x02\x02\x74\x75\x03\x02\x02\x02\x75\x8d\x07\x0e\x02\x02\x76\x77"
  	"\x0c\x17\x02\x02\x77\x78\x07\x27\x02\x02\x78\x79\x07\x11\x02\x02\x79"
  	"\x7a\x07\x34\x02\x02\x7a\x7c\x07\x1c\x02\x02\x7b\x7d\x05\x04\x03\x02"
  	"\x7c\x7b\x03\x02\x02\x02\x7c\x7d\x03\x02\x02\x02\x7d\x7e\x03\x02\x02"
  	"\x02\x7e\x8d\x07\x0e\x02\x02\x7f\x80\x0c\x15\x02\x02\x80\x81\x07\x04"
  	"\x02\x02\x81\x82\x05\x06\x04\x02\x82\x83\x07\x16\x02\x02\x83\x8d\x03"
  	"\x02\x02\x02\x84\x85\x0c\x13\x02\x02\x85\x8d\x09\x0a\x02\x02\x86\x87"
  	"\x0c\x12\x02\x02\x87\x89\x07\x1c\x02\x02\x88\x8a\x05\x04\x03\x02\x89"
  	"\x88\x03\x02\x02\x02\x89\x8a\x03\x02\x02\x02\x8a\x8b\x03\x02\x02\x02"
  	"\x8b\x8d\x07\x0e\x02\x02\x8c\x3e\x03\x02\x02\x02\x8c\x41\x03\x02\x02"
  	"\x02\x8c\x44\x03\x02\x02\x02\x8c\x47\x03\x02\x02\x02\x8c\x4a\x03\x02"
  	"\x02\x02\x8c\x4d\x03\x02\x02\x02\x8c\x50\x03\x02\x02\x02\x8c\x53\x03"
  	"\x02\x02\x02\x8c\x56\x03\x02\x02\x02\x8c\x59\x03\x02\x02\x02\x8c\x5c"
  	"\x03\x02\x02\x02\x8c\x5f\x03\x02\x02\x02\x8c\x65\x03\x02\x02\x02\x8c"
  	"\x68\x03\x02\x02\x02\x8c\x6b\x03\x02\x02\x02\x8c\x6e\x03\x02\x02\x02"
  	"\x8c\x76\x03\x02\x02\x02\x8c\x7f\x03\x02\x02\x02\x8c\x84\x03\x02\x02"
  	"\x02\x8c\x86\x03\x02\x02\x02\x8d\x90\x03\x02\x02\x02\x8e\x8c\x03\x02"
  	"\x02\x02\x8e\x8f\x03\x02\x02\x02\x8f\x07\x03\x02\x02\x02\x90\x8e\x03"
  	"\x02\x02\x02\x91\x9a\x07\x34\x02\x02\x92\x93\x07\x34\x02\x02\x93\x94"
  	"\x07\x04\x02\x02\x94\x9a\x07\x16\x02\x02\x95\x9a\x07\x1e\x02\x02\x96"
  	"\x97\x07\x1e\x02\x02\x97\x98\x07\x04\x02\x02\x98\x9a\x07\x16\x02\x02"
  	"\x99\x91\x03\x02\x02\x02\x99\x92\x03\x02\x02\x02\x99\x95\x03\x02\x02"
  	"\x02\x99\x96\x03\x02\x02\x02\x9a\x09\x03\x02\x02\x02\x0d\x12\x2f\x38"
  	"\x3a\x3c\x73\x7c\x89\x8c\x8e\x99";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'&'", "'['", "'*'", "'<'", "'--'", "'!='", "'<='", "'<<'", 
    "'super'", "'%'", "'*='", "')'", "'='", "'|='", "'new'", "'class'", 
    "'|'", "'!'", "'<<='", "']'", "'>>>'", "'-='", "','", "'-'", "':'", 
    "'('", "'&='", "'int'", "'?'", "'>>>='", "'>>='", "'+='", "'^='", "'++'", 
    "'>>'", "'^'", "'.'", "'+'", "'&&'", "'this'", "'||'", "'>'", "'%='", 
    "'/='", "'=='", "'/'", "'~'", "'>='", "'instanceof'", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "s", "expressionList", "e", "type"
  ];

  List log = new List();

  JavaExpressionsParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "JavaExpressions.g";
  SContext s() {
    var localContext = new SContext(context, state);
    enterRule(localContext, 0, RULE_S);
    try {
      enterOuterAlt(localContext, 1);
      state = 8; 
      e(0);
      state = 9; 
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
  ExpressionListContext expressionList() {
    var localContext = new ExpressionListContext(context, state);
    enterRule(localContext, 2, RULE_EXPRESSIONLIST);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 11; 
      e(0);
      state = 16;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == T__26) {
        state = 12; 
        match(T__26);
        state = 13; 
        e(0);
        state = 18;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
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
  EContext e([int _p = 0]) {
    var _parentctx = context;
    int _parentState = state;
    var localContext = new EContext(context, _parentState);
    var _prevctx = localContext;
    int _startState = 4;
    enterRecursionRule(localContext, 4, RULE_E, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(localContext, 1);
      state = 58;
      switch (interpreter.adaptivePredict(inputSource, 4, context)) {
        case 1:
          state = 20; 
          match(T__23);
          state = 21; 
          type();
          state = 22; 
          match(T__37);
          state = 23; 
          e(18);
          break;
        case 2:
          state = 25;
          _la = inputSource.lookAhead(1);
          if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__44) | (1 << T__25) | 
          	(1 << T__15) | (1 << T__11))) != 0))) {
            errorHandler.recoverInline(this);
          }
          consume();
          state = 26; 
          e(15);
          break;
        case 3:
          state = 27;
          _la = inputSource.lookAhead(1);
          if (!(_la == T__31 || _la == T__2)) {
            errorHandler.recoverInline(this);
          }
          consume();
          state = 28; 
          e(14);
          break;
        case 4:
          state = 29; 
          match(T__23);
          state = 30; 
          e(0);
          state = 31; 
          match(T__37);
          break;
        case 5:
          state = 33; 
          match(T__9);
          break;
        case 6:
          state = 34; 
          match(T__40);
          break;
        case 7:
          state = 35; 
          match(INT);
          break;
        case 8:
          state = 36; 
          match(ID);
          break;
        case 9:
          state = 37; 
          type();
          state = 38; 
          match(T__12);
          state = 39; 
          match(T__33);
          break;
        case 10:
          state = 41; 
          match(T__34);
          state = 42; 
          type();
          state = 56;
          switch (inputSource.lookAhead(1)) {
            case T__23: 
              state = 43; 
              match(T__23);
              state = 45;
              _la = inputSource.lookAhead(1);
              if ((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__44) | 
              	(1 << T__40) | (1 << T__34) | (1 << T__31) | (1 << T__25) | 
              	(1 << T__23) | (1 << T__21) | (1 << T__15) | (1 << T__11) | 
              	(1 << T__9) | (1 << T__2) | (1 << ID) | (1 << INT))) != 0)) {
                state = 44; 
                expressionList();
              }
              state = 47; 
              match(T__37); 
              break;
            case T__47: 
              state = 52; 
              errorHandler.sync(this);
              _alt = 1;
              do {
                switch (_alt) {
                case 1:
                	  state = 48; 
                	  match(T__47);
                	  state = 49; 
                	  e(0);
                	  state = 50; 
                	  match(T__29);
                	  break;
              	default:
              	  throw new NoViableAltException(this);
                }
                state = 54; 
                errorHandler.sync(this);
                _alt = interpreter.adaptivePredict(inputSource, 2, context);
              } while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER); 
              break;
            default: throw new NoViableAltException(this);
          }
          break;
      }
      context.stop = inputSource.lookToken(-1);
      state = 140;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 9, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          state = 138;
          switch (interpreter.adaptivePredict(inputSource, 8, context)) {
            case 1:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 60;
              if (!(precedencePredicate(context, 13))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 13)");
              state = 61;
              _la = inputSource.lookAhead(1);
              if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__46) | 
              	(1 << T__39) | (1 << T__3))) != 0))) {
                errorHandler.recoverInline(this);
              }
              consume();
              state = 62; 
              e(14);
              break;
            case 2:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 63;
              if (!(precedencePredicate(context, 12))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 12)");
              state = 64;
              _la = inputSource.lookAhead(1);
              if (!(_la == T__25 || _la == T__11)) {
                errorHandler.recoverInline(this);
              }
              consume();
              state = 65; 
              e(13);
              break;
            case 3:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 66;
              if (!(precedencePredicate(context, 11))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 11)");
              state = 67;
              _la = inputSource.lookAhead(1);
              if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__41) | 
              	(1 << T__28) | (1 << T__14))) != 0))) {
                errorHandler.recoverInline(this);
              }
              consume();
              state = 68; 
              e(12);
              break;
            case 4:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 69;
              if (!(precedencePredicate(context, 10))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 10)");
              state = 70;
              _la = inputSource.lookAhead(1);
              if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__45) | 
              	(1 << T__42) | (1 << T__7) | (1 << T__1))) != 0))) {
                errorHandler.recoverInline(this);
              }
              consume();
              state = 71; 
              e(11);
              break;
            case 5:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 72;
              if (!(precedencePredicate(context, 9))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 9)");
              state = 73; 
              match(T__0);
              state = 74; 
              e(10);
              break;
            case 6:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 75;
              if (!(precedencePredicate(context, 8))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 8)");
              state = 76;
              _la = inputSource.lookAhead(1);
              if (!(_la == T__43 || _la == T__4)) {
                errorHandler.recoverInline(this);
              }
              consume();
              state = 77; 
              e(9);
              break;
            case 7:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 78;
              if (!(precedencePredicate(context, 7))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 7)");
              state = 79; 
              match(T__48);
              state = 80; 
              e(8);
              break;
            case 8:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 81;
              if (!(precedencePredicate(context, 6))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 6)");
              state = 82; 
              match(T__13);
              state = 83; 
              e(7);
              break;
            case 9:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 84;
              if (!(precedencePredicate(context, 5))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 5)");
              state = 85; 
              match(T__32);
              state = 86; 
              e(6);
              break;
            case 10:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 87;
              if (!(precedencePredicate(context, 4))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 4)");
              state = 88; 
              match(T__10);
              state = 89; 
              e(5);
              break;
            case 11:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 90;
              if (!(precedencePredicate(context, 3))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 3)");
              state = 91; 
              match(T__8);
              state = 92; 
              e(4);
              break;
            case 12:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 93;
              if (!(precedencePredicate(context, 2))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 2)");
              state = 94; 
              match(T__20);
              state = 95; 
              e(0);
              state = 96; 
              match(T__24);
              state = 97; 
              e(3);
              break;
            case 13:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 99;
              if (!(precedencePredicate(context, 1))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 1)");
              state = 100;
              _la = inputSource.lookAhead(1);
              if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__38) | 
              	(1 << T__36) | (1 << T__35) | (1 << T__30) | (1 << T__27) | 
              	(1 << T__22) | (1 << T__19) | (1 << T__18) | (1 << T__17) | 
              	(1 << T__16) | (1 << T__6) | (1 << T__5))) != 0))) {
                errorHandler.recoverInline(this);
              }
              consume();
              state = 101; 
              e(2);
              break;
            case 14:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 102;
              if (!(precedencePredicate(context, 24))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 24)");
              state = 103; 
              match(T__12);
              state = 104; 
              match(ID);
              break;
            case 15:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 105;
              if (!(precedencePredicate(context, 23))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 23)");
              state = 106; 
              match(T__12);
              state = 107; 
              match(T__9);
              break;
            case 16:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 108;
              if (!(precedencePredicate(context, 22))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 22)");
              state = 109; 
              match(T__12);
              state = 110; 
              match(T__40);
              state = 111; 
              match(T__23);
              state = 113;
              _la = inputSource.lookAhead(1);
              if ((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__44) | 
              	(1 << T__40) | (1 << T__34) | (1 << T__31) | (1 << T__25) | 
              	(1 << T__23) | (1 << T__21) | (1 << T__15) | (1 << T__11) | 
              	(1 << T__9) | (1 << T__2) | (1 << ID) | (1 << INT))) != 0)) {
                state = 112; 
                expressionList();
              }
              state = 115; 
              match(T__37);
              break;
            case 17:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 116;
              if (!(precedencePredicate(context, 21))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 21)");
              state = 117; 
              match(T__12);
              state = 118; 
              match(T__34);
              state = 119; 
              match(ID);
              state = 120; 
              match(T__23);
              state = 122;
              _la = inputSource.lookAhead(1);
              if ((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__44) | 
              	(1 << T__40) | (1 << T__34) | (1 << T__31) | (1 << T__25) | 
              	(1 << T__23) | (1 << T__21) | (1 << T__15) | (1 << T__11) | 
              	(1 << T__9) | (1 << T__2) | (1 << ID) | (1 << INT))) != 0)) {
                state = 121; 
                expressionList();
              }
              state = 124; 
              match(T__37);
              break;
            case 18:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 125;
              if (!(precedencePredicate(context, 19))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 19)");
              state = 126; 
              match(T__47);
              state = 127; 
              e(0);
              state = 128; 
              match(T__29);
              break;
            case 19:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 130;
              if (!(precedencePredicate(context, 17))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 17)");
              state = 131;
              _la = inputSource.lookAhead(1);
              if (!(_la == T__44 || _la == T__15)) {
                errorHandler.recoverInline(this);
              }
              consume();
              break;
            case 20:
              localContext = new EContext(_parentctx, _parentState);
              pushNewRecursionContext(localContext, _startState, RULE_E);
              state = 132;
              if (!(precedencePredicate(context, 16))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 16)");
              state = 133; 
              match(T__23);
              state = 135;
              _la = inputSource.lookAhead(1);
              if ((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__44) | 
              	(1 << T__40) | (1 << T__34) | (1 << T__31) | (1 << T__25) | 
              	(1 << T__23) | (1 << T__21) | (1 << T__15) | (1 << T__11) | 
              	(1 << T__9) | (1 << T__2) | (1 << ID) | (1 << INT))) != 0)) {
                state = 134; 
                expressionList();
              }
              state = 137; 
              match(T__37);
              break;
          } 
        }
        state = 142;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 9, context);
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
  TypeContext type() {
    var localContext = new TypeContext(context, state);
    enterRule(localContext, 6, RULE_TYPE);
    try {
      state = 151;
      switch (interpreter.adaptivePredict(inputSource, 10, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 143; 
          match(ID);
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 144; 
          match(ID);
          state = 145; 
          match(T__47);
          state = 146; 
          match(T__29);
          break;
        case 3:
          enterOuterAlt(localContext, 3);
          state = 147; 
          match(T__21);
          break;
        case 4:
          enterOuterAlt(localContext, 4);
          state = 148; 
          match(T__21);
          state = 149; 
          match(T__47);
          state = 150; 
          match(T__29);
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
      case 2: return _eSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _eSemanticPredicate(EContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return precedencePredicate(context, 13);
      case 1: return precedencePredicate(context, 12);
      case 2: return precedencePredicate(context, 11);
      case 3: return precedencePredicate(context, 10);
      case 4: return precedencePredicate(context, 9);
      case 5: return precedencePredicate(context, 8);
      case 6: return precedencePredicate(context, 7);
      case 7: return precedencePredicate(context, 6);
      case 8: return precedencePredicate(context, 5);
      case 9: return precedencePredicate(context, 4);
      case 10: return precedencePredicate(context, 3);
      case 11: return precedencePredicate(context, 2);
      case 12: return precedencePredicate(context, 1);
      case 13: return precedencePredicate(context, 24);
      case 14: return precedencePredicate(context, 23);
      case 15: return precedencePredicate(context, 22);
      case 17: return precedencePredicate(context, 19);
      case 16: return precedencePredicate(context, 21);
      case 19: return precedencePredicate(context, 16);
      case 18: return precedencePredicate(context, 17);
    }
    return true;
  }
}

class SContext extends ParserRuleContext {

  SContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => JavaExpressionsParser.RULE_S;

  TerminalNode getEOF() => getToken(JavaExpressionsParser.EOF, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class ExpressionListContext extends ParserRuleContext {

  ExpressionListContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => JavaExpressionsParser.RULE_EXPRESSIONLIST;

  EContext getE(int i) => getRuleContext((c) => c is EContext, i);

  List<EContext> getEs() => getRuleContexts((c) => c is EContext);
}

class EContext extends ParserRuleContext {

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => JavaExpressionsParser.RULE_E;

  TerminalNode getINT() => getToken(JavaExpressionsParser.INT, 0);

  ExpressionListContext getExpressionList() => getRuleContext((c) => c is ExpressionListContext, 0);

  TerminalNode getID() => getToken(JavaExpressionsParser.ID, 0);

  TypeContext getType() => getRuleContext((c) => c is TypeContext, 0);

  EContext getE(int i) => getRuleContext((c) => c is EContext, i);

  List<EContext> getEs() => getRuleContexts((c) => c is EContext);
}

class TypeContext extends ParserRuleContext {

  TypeContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => JavaExpressionsParser.RULE_TYPE;

  TerminalNode getID() => getToken(JavaExpressionsParser.ID, 0);
}

