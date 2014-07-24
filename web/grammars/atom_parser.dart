// Generated from Atom.g by antlr4dart
part of atom;

class AtomParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_START = 0, RULE_E = 1;

  static const int T__2 = 1, T__1 = 2, T__0 = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x1a\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x03\x03\x03\x06\x03\x0c\x0a\x03\x0d\x03\x0e\x03"
  	"\x0d\x05\x03\x10\x0a\x03\x03\x03\x03\x03\x03\x03\x07\x03\x15\x0a\x03"
  	"\x0c\x03\x0e\x03\x18\x0b\x03\x03\x03\x02\x02\x04\x02\x04\x02\x02\x1a"
  	"\x02\x06\x03\x02\x02\x02\x04\x0f\x03\x02\x02\x02\x06\x07\x05\x04\x03"
  	"\x02\x07\x08\x07\x02\x02\x03\x08\x03\x03\x02\x02\x02\x09\x10\x07\x04"
  	"\x02\x02\x0a\x0c\x07\x03\x02\x02\x0b\x0a\x03\x02\x02\x02\x0c\x0d\x03"
  	"\x02\x02\x02\x0d\x0b\x03\x02\x02\x02\x0d\x0e\x03\x02\x02\x02\x0e\x10"
  	"\x03\x02\x02\x02\x0f\x09\x03\x02\x02\x02\x0f\x0b\x03\x02\x02\x02\x10"
  	"\x16\x03\x02\x02\x02\x11\x12\x06\x03\x02\x03\x12\x13\x07\x05\x02\x02"
  	"\x13\x15\x05\x04\x03\x02\x14\x11\x03\x02\x02\x02\x15\x18\x03\x02\x02"
  	"\x02\x16\x14\x03\x02\x02\x02\x16\x17\x03\x02\x02\x02\x17\x05\x03\x02"
  	"\x02\x02\x18\x16\x03\x02\x02\x02\x05\x0d\x0f\x16";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'b'", "'a'", "'+'"
  ];

  final List<String> ruleNames = [
    "start", "e"
  ];
  AtomParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Atom.g";
  StartContext start() {
    var localContext = new StartContext(context, state);
    enterRule(localContext, 0, RULE_START);
    try {
      enterOuterAlt(localContext, 1);
      state = 4; 
      e(0);
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
  EContext e(int _p) {
    var localContext = new EContext.args(context, state, _p);
    enterRule(localContext, 2, RULE_E);
    try {
      var _alt;
      enterOuterAlt(localContext, 1);
      state = 13;
      switch (inputSource.lookAhead(1)) {
        case T__1: 
          state = 7; 
          match(T__1); 
          break;
        case T__2: 
          state = 9; 
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
            case 1:
            	  state = 8; 
            	  match(T__2);
            	  break;
          	default:
          	  throw new NoViableAltException(this);
            }
            state = 11; 
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(inputSource, 0, context);
          } while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER); 
          break;
        default: throw new NoViableAltException(this);
      }
      state = 20;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 2, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 15;
          if (!(3 >= localContext._p)) 
            throw new FailedPredicateException(this, "3 >= $_p");
          state = 16; 
          match(T__0);
          state = 17; 
          e(4); 
        }
        state = 22;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 2, context);
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
      case 1: return _eSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _eSemanticPredicate(EContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return 3 >= localContext._p;
    }
    return true;
  }
}

class StartContext extends ParserRuleContext {

  StartContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => AtomParser.RULE_START;

  TerminalNode getEOF() => getToken(AtomParser.EOF, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

class EContext extends ParserRuleContext {

  int _p;

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  EContext.args(ParserRuleContext parent, int invokingState, this._p) : super(parent, invokingState);

  int get ruleIndex => AtomParser.RULE_E;

  EContext getE(int i) => getRuleContext((c) => c is EContext, i);

  List<EContext> getEs() => getRuleContexts((c) => c is EContext);
}

