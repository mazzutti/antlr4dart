// Generated from BigTree.g by antlr4dart
part of big_tree;

class BigTreeParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0, RULE_Y = 1, RULE_X = 2, RULE_K = 3, RULE_J = 4, 
                   RULE_I = 5;

  static const int M = 1, S = 2, T = 3, A = 4, B = 5, C = 6;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x08\x1b\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x04\x05\x09\x05\x04\x06\x09\x06\x04\x07\x09\x07\x03\x02\x03"
  	"\x02\x03\x03\x03\x03\x03\x04\x03\x04\x03\x05\x03\x05\x03\x06\x03\x06"
  	"\x03\x07\x03\x07\x03\x07\x02\x02\x08\x02\x04\x06\x08\x0a\x0c\x02\x02"
  	"\x14\x02\x0e\x03\x02\x02\x02\x04\x10\x03\x02\x02\x02\x06\x12\x03\x02"
  	"\x02\x02\x08\x14\x03\x02\x02\x02\x0a\x16\x03\x02\x02\x02\x0c\x18\x03"
  	"\x02\x02\x02\x0e\x0f\x07\x03\x02\x02\x0f\x03\x03\x02\x02\x02\x10\x11"
  	"\x07\x04\x02\x02\x11\x05\x03\x02\x02\x02\x12\x13\x07\x05\x02\x02\x13"
  	"\x07\x03\x02\x02\x02\x14\x15\x07\x06\x02\x02\x15\x09\x03\x02\x02\x02"
  	"\x16\x17\x07\x07\x02\x02\x17\x0b\x03\x02\x02\x02\x18\x19\x07\x08\x02"
  	"\x02\x19\x0d\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "M", "S", "T", "A", "B", "C"
  ];

  final List<String> ruleNames = [
    "a", "y", "x", "k", "j", "i"
  ];
  BigTreeParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "BigTree.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    try {
      enterOuterAlt(localContext, 1);
      state = 12; 
      match(M);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  YContext y() {
    var localContext = new YContext(context, state);
    enterRule(localContext, 2, RULE_Y);
    try {
      enterOuterAlt(localContext, 1);
      state = 14; 
      match(S);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  XContext x() {
    var localContext = new XContext(context, state);
    enterRule(localContext, 4, RULE_X);
    try {
      enterOuterAlt(localContext, 1);
      state = 16; 
      match(T);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  KContext k() {
    var localContext = new KContext(context, state);
    enterRule(localContext, 6, RULE_K);
    try {
      enterOuterAlt(localContext, 1);
      state = 18; 
      match(A);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  JContext j() {
    var localContext = new JContext(context, state);
    enterRule(localContext, 8, RULE_J);
    try {
      enterOuterAlt(localContext, 1);
      state = 20; 
      match(B);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  IContext i() {
    var localContext = new IContext(context, state);
    enterRule(localContext, 10, RULE_I);
    try {
      enterOuterAlt(localContext, 1);
      state = 22; 
      match(C);
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

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => BigTreeParser.RULE_A;

  TerminalNode getM() => getToken(BigTreeParser.M, 0);
}

class YContext extends ParserRuleContext {

  YContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => BigTreeParser.RULE_Y;

  TerminalNode getS() => getToken(BigTreeParser.S, 0);
}

class XContext extends ParserRuleContext {

  XContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => BigTreeParser.RULE_X;

  TerminalNode getT() => getToken(BigTreeParser.T, 0);
}

class KContext extends ParserRuleContext {

  KContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => BigTreeParser.RULE_K;

  TerminalNode getA() => getToken(BigTreeParser.A, 0);
}

class JContext extends ParserRuleContext {

  JContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => BigTreeParser.RULE_J;

  TerminalNode getB() => getToken(BigTreeParser.B, 0);
}

class IContext extends ParserRuleContext {

  IContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => BigTreeParser.RULE_I;

  TerminalNode getC() => getToken(BigTreeParser.C, 0);
}

