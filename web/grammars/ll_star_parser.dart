// Generated from LLStar.g by antlr4dart
part of llstar;

class LLStarParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_PROGRAM = 0, RULE_DECLARATION = 1, RULE_VARIABLE = 2, 
                   RULE_DECLARATOR = 3, RULE_FUNCTIONHEADER = 4, RULE_FORMALPARAMETER = 5, 
                   RULE_TYPE = 6, RULE_BLOCK = 7, RULE_STAT = 8, RULE_FORSTAT = 9, 
                   RULE_ASSIGNSTAT = 10, RULE_EXPR = 11, RULE_CONDEXPR = 12, 
                   RULE_AEXPR = 13, RULE_ATOM = 14;

  static const int T__13 = 1, T__12 = 2, T__11 = 3, T__10 = 4, T__9 = 5, 
                   T__8 = 6, T__7 = 7, T__6 = 8, T__5 = 9, T__4 = 10, T__3 = 11, 
                   T__2 = 12, T__1 = 13, T__0 = 14, ID = 15, INT = 16, WS = 17;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x13\x8b\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x04\x05\x09\x05\x04\x06\x09\x06\x04\x07\x09\x07\x04\x08\x09"
  	"\x08\x04\x09\x09\x09\x04\x0a\x09\x0a\x04\x0b\x09\x0b\x04\x0c\x09\x0c"
  	"\x04\x0d\x09\x0d\x04\x0e\x09\x0e\x04\x0f\x09\x0f\x04\x10\x09\x10\x03"
  	"\x02\x06\x02\x22\x0a\x02\x0d\x02\x0e\x02\x23\x03\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x03\x05\x03\x2f\x0a\x03"
  	"\x03\x04\x03\x04\x03\x04\x03\x04\x03\x05\x03\x05\x03\x06\x03\x06\x03"
  	"\x06\x03\x06\x03\x06\x03\x06\x07\x06\x3d\x0a\x06\x0c\x06\x0e\x06\x40"
  	"\x0b\x06\x05\x06\x42\x0a\x06\x03\x06\x03\x06\x03\x06\x03\x07\x03\x07"
  	"\x03\x07\x03\x08\x03\x08\x03\x09\x03\x09\x07\x09\x4e\x0a\x09\x0c\x09"
  	"\x0e\x09\x51\x0b\x09\x03\x09\x07\x09\x54\x0a\x09\x0c\x09\x0e\x09\x57"
  	"\x0b\x09\x03\x09\x03\x09\x03\x0a\x03\x0a\x03\x0a\x03\x0a\x03\x0a\x03"
  	"\x0a\x03\x0a\x03\x0a\x03\x0a\x05\x0a\x64\x0a\x0a\x03\x0b\x03\x0b\x03"
  	"\x0b\x03\x0b\x03\x0b\x03\x0b\x03\x0b\x03\x0b\x03\x0b\x03\x0b\x03\x0c"
  	"\x03\x0c\x03\x0c\x03\x0c\x03\x0d\x03\x0d\x03\x0e\x03\x0e\x03\x0e\x05"
  	"\x0e\x79\x0a\x0e\x03\x0f\x03\x0f\x03\x0f\x07\x0f\x7e\x0a\x0f\x0c\x0f"
  	"\x0e\x0f\x81\x0b\x0f\x03\x10\x03\x10\x03\x10\x03\x10\x03\x10\x03\x10"
  	"\x05\x10\x89\x0a\x10\x03\x10\x02\x02\x11\x02\x04\x06\x08\x0a\x0c\x0e"
  	"\x10\x12\x14\x16\x18\x1a\x1c\x1e\x02\x04\x05\x02\x08\x08\x0c\x0c\x10"
  	"\x11\x04\x02\x09\x09\x0e\x0e\x8a\x02\x21\x03\x02\x02\x02\x04\x2e\x03"
  	"\x02\x02\x02\x06\x30\x03\x02\x02\x02\x08\x34\x03\x02\x02\x02\x0a\x36"
  	"\x03\x02\x02\x02\x0c\x46\x03\x02\x02\x02\x0e\x49\x03\x02\x02\x02\x10"
  	"\x4b\x03\x02\x02\x02\x12\x63\x03\x02\x02\x02\x14\x65\x03\x02\x02\x02"
  	"\x16\x6f\x03\x02\x02\x02\x18\x73\x03\x02\x02\x02\x1a\x75\x03\x02\x02"
  	"\x02\x1c\x7a\x03\x02\x02\x02\x1e\x88\x03\x02\x02\x02\x20\x22\x05\x04"
  	"\x03\x02\x21\x20\x03\x02\x02\x02\x22\x23\x03\x02\x02\x02\x23\x21\x03"
  	"\x02\x02\x02\x23\x24\x03\x02\x02\x02\x24\x03\x03\x02\x02\x02\x25\x2f"
  	"\x05\x06\x04\x02\x26\x27\x05\x0a\x06\x02\x27\x28\x07\x0b\x02\x02\x28"
  	"\x29\x08\x03\x01\x02\x29\x2f\x03\x02\x02\x02\x2a\x2b\x05\x0a\x06\x02"
  	"\x2b\x2c\x05\x10\x09\x02\x2c\x2d\x08\x03\x01\x02\x2d\x2f\x03\x02\x02"
  	"\x02\x2e\x25\x03\x02\x02\x02\x2e\x26\x03\x02\x02\x02\x2e\x2a\x03\x02"
  	"\x02\x02\x2f\x05\x03\x02\x02\x02\x30\x31\x05\x0e\x08\x02\x31\x32\x05"
  	"\x08\x05\x02\x32\x33\x07\x0b\x02\x02\x33\x07\x03\x02\x02\x02\x34\x35"
  	"\x07\x11\x02\x02\x35\x09\x03\x02\x02\x02\x36\x37\x05\x0e\x08\x02\x37"
  	"\x38\x07\x11\x02\x02\x38\x41\x07\x07\x02\x02\x39\x3e\x05\x0c\x07\x02"
  	"\x3a\x3b\x07\x04\x02\x02\x3b\x3d\x05\x0c\x07\x02\x3c\x3a\x03\x02\x02"
  	"\x02\x3d\x40\x03\x02\x02\x02\x3e\x3c\x03\x02\x02\x02\x3e\x3f\x03\x02"
  	"\x02\x02\x3f\x42\x03\x02\x02\x02\x40\x3e\x03\x02\x02\x02\x41\x39\x03"
  	"\x02\x02\x02\x41\x42\x03\x02\x02\x02\x42\x43\x03\x02\x02\x02\x43\x44"
  	"\x07\x03\x02\x02\x44\x45\x08\x06\x01\x02\x45\x0b\x03\x02\x02\x02\x46"
  	"\x47\x05\x0e\x08\x02\x47\x48\x05\x08\x05\x02\x48\x0d\x03\x02\x02\x02"
  	"\x49\x4a\x09\x02\x02\x02\x4a\x0f\x03\x02\x02\x02\x4b\x4f\x07\x0d\x02"
  	"\x02\x4c\x4e\x05\x06\x04\x02\x4d\x4c\x03\x02\x02\x02\x4e\x51\x03\x02"
  	"\x02\x02\x4f\x4d\x03\x02\x02\x02\x4f\x50\x03\x02\x02\x02\x50\x55\x03"
  	"\x02\x02\x02\x51\x4f\x03\x02\x02\x02\x52\x54\x05\x12\x0a\x02\x53\x52"
  	"\x03\x02\x02\x02\x54\x57\x03\x02\x02\x02\x55\x53\x03\x02\x02\x02\x55"
  	"\x56\x03\x02\x02\x02\x56\x58\x03\x02\x02\x02\x57\x55\x03\x02\x02\x02"
  	"\x58\x59\x07\x0f\x02\x02\x59\x11\x03\x02\x02\x02\x5a\x64\x05\x14\x0b"
  	"\x02\x5b\x5c\x05\x18\x0d\x02\x5c\x5d\x07\x0b\x02\x02\x5d\x64\x03\x02"
  	"\x02\x02\x5e\x64\x05\x10\x09\x02\x5f\x60\x05\x16\x0c\x02\x60\x61\x07"
  	"\x0b\x02\x02\x61\x64\x03\x02\x02\x02\x62\x64\x07\x0b\x02\x02\x63\x5a"
  	"\x03\x02\x02\x02\x63\x5b\x03\x02\x02\x02\x63\x5e\x03\x02\x02\x02\x63"
  	"\x5f\x03\x02\x02\x02\x63\x62\x03\x02\x02\x02\x64\x13\x03\x02\x02\x02"
  	"\x65\x66\x07\x06\x02\x02\x66\x67\x07\x07\x02\x02\x67\x68\x05\x16\x0c"
  	"\x02\x68\x69\x07\x0b\x02\x02\x69\x6a\x05\x18\x0d\x02\x6a\x6b\x07\x0b"
  	"\x02\x02\x6b\x6c\x05\x16\x0c\x02\x6c\x6d\x07\x03\x02\x02\x6d\x6e\x05"
  	"\x10\x09\x02\x6e\x15\x03\x02\x02\x02\x6f\x70\x07\x11\x02\x02\x70\x71"
  	"\x07\x0a\x02\x02\x71\x72\x05\x18\x0d\x02\x72\x17\x03\x02\x02\x02\x73"
  	"\x74\x05\x1a\x0e\x02\x74\x19\x03\x02\x02\x02\x75\x78\x05\x1c\x0f\x02"
  	"\x76\x77\x09\x03\x02\x02\x77\x79\x05\x1c\x0f\x02\x78\x76\x03\x02\x02"
  	"\x02\x78\x79\x03\x02\x02\x02\x79\x1b\x03\x02\x02\x02\x7a\x7f\x05\x1e"
  	"\x10\x02\x7b\x7c\x07\x05\x02\x02\x7c\x7e\x05\x1e\x10\x02\x7d\x7b\x03"
  	"\x02\x02\x02\x7e\x81\x03\x02\x02\x02\x7f\x7d\x03\x02\x02\x02\x7f\x80"
  	"\x03\x02\x02\x02\x80\x1d\x03\x02\x02\x02\x81\x7f\x03\x02\x02\x02\x82"
  	"\x89\x07\x11\x02\x02\x83\x89\x07\x12\x02\x02\x84\x85\x07\x07\x02\x02"
  	"\x85\x86\x05\x18\x0d\x02\x86\x87\x07\x03\x02\x02\x87\x89\x03\x02\x02"
  	"\x02\x88\x82\x03\x02\x02\x02\x88\x83\x03\x02\x02\x02\x88\x84\x03\x02"
  	"\x02\x02\x89\x1f\x03\x02\x02\x02\x0c\x23\x2e\x3e\x41\x4f\x55\x63\x78"
  	"\x7f\x88";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "')'", "','", "'+'", "'for'", "'('", "'int'", "'<'", "'='", 
    "';'", "'void'", "'{'", "'=='", "'}'", "'char'", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "program", "declaration", "variable", "declarator", "functionHeader", 
    "formalParameter", "type", "block", "stat", "forStat", "assignStat", 
    "expr", "condExpr", "aexpr", "atom"
  ];

  List olog = new List();

  void outputMsg(msg) {
    this.olog.add(msg);
  }

  LLStarParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "LLStar.g";
  ProgramContext program() {
    var localContext = new ProgramContext(context, state);
    enterRule(localContext, 0, RULE_PROGRAM);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 31; 
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      do {
        state = 30; 
        declaration();
        state = 33; 
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__8) | (1 << T__4) | 
      	(1 << T__0) | (1 << ID))) != 0));
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
      state = 44;
      switch (interpreter.adaptivePredict(inputSource, 1, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 35; 
          variable();
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 36; 
          localContext.functionHeader = functionHeader();
          state = 37; 
          match(T__5);
          outputMsg("${localContext.functionHeader.name} is a declaration");
          break;
        case 3:
          enterOuterAlt(localContext, 3);
          state = 40; 
          localContext.functionHeader = functionHeader();
          state = 41; 
          block();
          outputMsg("${localContext.functionHeader.name} is a definition");
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
  VariableContext variable() {
    var localContext = new VariableContext(context, state);
    enterRule(localContext, 4, RULE_VARIABLE);
    try {
      enterOuterAlt(localContext, 1);
      state = 46; 
      type();
      state = 47; 
      declarator();
      state = 48; 
      match(T__5);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  DeclaratorContext declarator() {
    var localContext = new DeclaratorContext(context, state);
    enterRule(localContext, 6, RULE_DECLARATOR);
    try {
      enterOuterAlt(localContext, 1);
      state = 50; 
      match(ID);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  FunctionHeaderContext functionHeader() {
    var localContext = new FunctionHeaderContext(context, state);
    enterRule(localContext, 8, RULE_FUNCTIONHEADER);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 52; 
      type();
      state = 53; 
      localContext.id = match(ID);
      state = 54; 
      match(T__9);
      state = 63;
      _la = inputSource.lookAhead(1);
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__8) | (1 << T__4) | 
      	(1 << T__0) | (1 << ID))) != 0)) {
        state = 55; 
        formalParameter();
        state = 60;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
        while (_la == T__12) {
          state = 56; 
          match(T__12);
          state = 57; 
          formalParameter();
          state = 62;
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
        }
      }
      state = 65; 
      match(T__13);
      localContext.name =  localContext.id != null ? localContext.id.text : null;
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  FormalParameterContext formalParameter() {
    var localContext = new FormalParameterContext(context, state);
    enterRule(localContext, 10, RULE_FORMALPARAMETER);
    try {
      enterOuterAlt(localContext, 1);
      state = 68; 
      type();
      state = 69; 
      declarator();
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  TypeContext type() {
    var localContext = new TypeContext(context, state);
    enterRule(localContext, 12, RULE_TYPE);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 71;
      _la = inputSource.lookAhead(1);
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__8) | (1 << T__4) | 
      	(1 << T__0) | (1 << ID))) != 0))) {
        errorHandler.recoverInline(this);
      }
      consume();
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  BlockContext block() {
    var localContext = new BlockContext(context, state);
    enterRule(localContext, 14, RULE_BLOCK);
    int _la;
    try {
      var _alt;
      enterOuterAlt(localContext, 1);
      state = 73; 
      match(T__3);
      state = 77;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 4, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 74; 
          variable(); 
        }
        state = 79;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 4, context);
      }
      state = 83;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << T__10) | (1 << T__9) | 
      	(1 << T__5) | (1 << T__3) | (1 << ID) | (1 << INT))) != 0)) {
        state = 80; 
        stat();
        state = 85;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 86; 
      match(T__1);
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
    enterRule(localContext, 16, RULE_STAT);
    try {
      state = 97;
      switch (interpreter.adaptivePredict(inputSource, 6, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 88; 
          forStat();
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 89; 
          expr();
          state = 90; 
          match(T__5);
          break;
        case 3:
          enterOuterAlt(localContext, 3);
          state = 92; 
          block();
          break;
        case 4:
          enterOuterAlt(localContext, 4);
          state = 93; 
          assignStat();
          state = 94; 
          match(T__5);
          break;
        case 5:
          enterOuterAlt(localContext, 5);
          state = 96; 
          match(T__5);
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
  ForStatContext forStat() {
    var localContext = new ForStatContext(context, state);
    enterRule(localContext, 18, RULE_FORSTAT);
    try {
      enterOuterAlt(localContext, 1);
      state = 99; 
      match(T__10);
      state = 100; 
      match(T__9);
      state = 101; 
      assignStat();
      state = 102; 
      match(T__5);
      state = 103; 
      expr();
      state = 104; 
      match(T__5);
      state = 105; 
      assignStat();
      state = 106; 
      match(T__13);
      state = 107; 
      block();
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  AssignStatContext assignStat() {
    var localContext = new AssignStatContext(context, state);
    enterRule(localContext, 20, RULE_ASSIGNSTAT);
    try {
      enterOuterAlt(localContext, 1);
      state = 109; 
      match(ID);
      state = 110; 
      match(T__6);
      state = 111; 
      expr();
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  ExprContext expr() {
    var localContext = new ExprContext(context, state);
    enterRule(localContext, 22, RULE_EXPR);
    try {
      enterOuterAlt(localContext, 1);
      state = 113; 
      condExpr();
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  CondExprContext condExpr() {
    var localContext = new CondExprContext(context, state);
    enterRule(localContext, 24, RULE_CONDEXPR);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 115; 
      aexpr();
      state = 118;
      _la = inputSource.lookAhead(1);
      if (_la == T__7 || _la == T__2) {
        state = 116;
        _la = inputSource.lookAhead(1);
        if (!(_la == T__7 || _la == T__2)) {
          errorHandler.recoverInline(this);
        }
        consume();
        state = 117; 
        aexpr();
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
  AexprContext aexpr() {
    var localContext = new AexprContext(context, state);
    enterRule(localContext, 26, RULE_AEXPR);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 120; 
      atom();
      state = 125;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == T__11) {
        state = 121; 
        match(T__11);
        state = 122; 
        atom();
        state = 127;
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
  AtomContext atom() {
    var localContext = new AtomContext(context, state);
    enterRule(localContext, 28, RULE_ATOM);
    try {
      state = 134;
      switch (inputSource.lookAhead(1)) {
        case ID: 
          enterOuterAlt(localContext, 1);
          state = 128; 
          match(ID); 
          break;
        case INT: 
          enterOuterAlt(localContext, 2);
          state = 129; 
          match(INT); 
          break;
        case T__9: 
          enterOuterAlt(localContext, 3);
          state = 130; 
          match(T__9);
          state = 131; 
          expr();
          state = 132; 
          match(T__13); 
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

class ProgramContext extends ParserRuleContext {

  ProgramContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_PROGRAM;

  List<DeclarationContext> getDeclarations() => getRuleContexts((c) => c is DeclarationContext);

  DeclarationContext getDeclaration(int i) => getRuleContext((c) => c is DeclarationContext, i);
}

class DeclarationContext extends ParserRuleContext {

  FunctionHeaderContext functionHeader;

  DeclarationContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_DECLARATION;

  FunctionHeaderContext getFunctionHeader() => getRuleContext((c) => c is FunctionHeaderContext, 0);

  VariableContext getVariable() => getRuleContext((c) => c is VariableContext, 0);

  BlockContext getBlock() => getRuleContext((c) => c is BlockContext, 0);
}

class VariableContext extends ParserRuleContext {

  VariableContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_VARIABLE;

  TypeContext getType() => getRuleContext((c) => c is TypeContext, 0);

  DeclaratorContext getDeclarator() => getRuleContext((c) => c is DeclaratorContext, 0);
}

class DeclaratorContext extends ParserRuleContext {

  DeclaratorContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_DECLARATOR;

  TerminalNode getID() => getToken(LLStarParser.ID, 0);
}

class FunctionHeaderContext extends ParserRuleContext {

  String name;
  Token id;

  FunctionHeaderContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_FUNCTIONHEADER;

  TerminalNode getID() => getToken(LLStarParser.ID, 0);

  List<FormalParameterContext> getFormalParameters() => getRuleContexts((c) => c is FormalParameterContext);

  TypeContext getType() => getRuleContext((c) => c is TypeContext, 0);

  FormalParameterContext getFormalParameter(int i) => getRuleContext((c) => c is FormalParameterContext, i);
}

class FormalParameterContext extends ParserRuleContext {

  FormalParameterContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_FORMALPARAMETER;

  TypeContext getType() => getRuleContext((c) => c is TypeContext, 0);

  DeclaratorContext getDeclarator() => getRuleContext((c) => c is DeclaratorContext, 0);
}

class TypeContext extends ParserRuleContext {

  TypeContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_TYPE;

  TerminalNode getID() => getToken(LLStarParser.ID, 0);
}

class BlockContext extends ParserRuleContext {

  BlockContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_BLOCK;

  StatContext getStat(int i) => getRuleContext((c) => c is StatContext, i);

  List<VariableContext> getVariables() => getRuleContexts((c) => c is VariableContext);

  VariableContext getVariable(int i) => getRuleContext((c) => c is VariableContext, i);

  List<StatContext> getStats() => getRuleContexts((c) => c is StatContext);
}

class StatContext extends ParserRuleContext {

  StatContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_STAT;

  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);

  AssignStatContext getAssignStat() => getRuleContext((c) => c is AssignStatContext, 0);

  ForStatContext getForStat() => getRuleContext((c) => c is ForStatContext, 0);

  BlockContext getBlock() => getRuleContext((c) => c is BlockContext, 0);
}

class ForStatContext extends ParserRuleContext {

  ForStatContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_FORSTAT;

  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);

  List<AssignStatContext> getAssignStats() => getRuleContexts((c) => c is AssignStatContext);

  AssignStatContext getAssignStat(int i) => getRuleContext((c) => c is AssignStatContext, i);

  BlockContext getBlock() => getRuleContext((c) => c is BlockContext, 0);
}

class AssignStatContext extends ParserRuleContext {

  AssignStatContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_ASSIGNSTAT;

  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);

  TerminalNode getID() => getToken(LLStarParser.ID, 0);
}

class ExprContext extends ParserRuleContext {

  ExprContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_EXPR;

  CondExprContext getCondExpr() => getRuleContext((c) => c is CondExprContext, 0);
}

class CondExprContext extends ParserRuleContext {

  CondExprContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_CONDEXPR;

  List<AexprContext> getAexprs() => getRuleContexts((c) => c is AexprContext);

  AexprContext getAexpr(int i) => getRuleContext((c) => c is AexprContext, i);
}

class AexprContext extends ParserRuleContext {

  AexprContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_AEXPR;

  AtomContext getAtom(int i) => getRuleContext((c) => c is AtomContext, i);

  List<AtomContext> getAtoms() => getRuleContexts((c) => c is AtomContext);
}

class AtomContext extends ParserRuleContext {

  AtomContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => LLStarParser.RULE_ATOM;

  TerminalNode getINT() => getToken(LLStarParser.INT, 0);

  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);

  TerminalNode getID() => getToken(LLStarParser.ID, 0);
}

