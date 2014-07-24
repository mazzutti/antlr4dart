// Generated from ArbitraryLeft.g by antlr4dart
library atn_interpreter_test.arbitrary_left;

import "package:antlr4dart/antlr4dart.dart";

class ArbitraryLeft extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0;

  static const int A = 1, B = 2, C = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x13\x04\x02\x09\x02\x03\x02\x06\x02\x06\x0a"
  	"\x02\x0d\x02\x0e\x02\x07\x03\x02\x03\x02\x06\x02\x0c\x0a\x02\x0d\x02"
  	"\x0e\x02\x0d\x03\x02\x05\x02\x11\x0a\x02\x03\x02\x02\x02\x03\x02\x02"
  	"\x02\x14\x02\x10\x03\x02\x02\x02\x04\x06\x07\x03\x02\x02\x05\x04\x03"
  	"\x02\x02\x02\x06\x07\x03\x02\x02\x02\x07\x05\x03\x02\x02\x02\x07\x08"
  	"\x03\x02\x02\x02\x08\x09\x03\x02\x02\x02\x09\x11\x07\x04\x02\x02\x0a"
  	"\x0c\x07\x03\x02\x02\x0b\x0a\x03\x02\x02\x02\x0c\x0d\x03\x02\x02\x02"
  	"\x0d\x0b\x03\x02\x02\x02\x0d\x0e\x03\x02\x02\x02\x0e\x0f\x03\x02\x02"
  	"\x02\x0f\x11\x07\x05\x02\x02\x10\x05\x03\x02\x02\x02\x10\x0b\x03\x02"
  	"\x02\x02\x11\x03\x03\x02\x02\x02\x05\x07\x0d\x10";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "A", "B", "C"
  ];

  final List<String> ruleNames = [
    "a"
  ];
  ArbitraryLeft(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "ArbitraryLeft.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    int _la;
    try {
      state = 14;
      switch (interpreter.adaptivePredict(inputSource, 2, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 3; 
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
          do {
            state = 2; 
            match(A);
            state = 5; 
            errorHandler.sync(this);
            _la = inputSource.lookAhead(1);
          } while (_la == A);
          state = 7; 
          match(B);
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 9; 
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
          do {
            state = 8; 
            match(A);
            state = 11; 
            errorHandler.sync(this);
            _la = inputSource.lookAhead(1);
          } while (_la == A);
          state = 13; 
          match(C);
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
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => ArbitraryLeft.RULE_A;

  TerminalNode getA(int i) => getToken(ArbitraryLeft.A, i);

  List<TerminalNode> getAs() => getTokens(ArbitraryLeft.A);

  TerminalNode getC() => getToken(ArbitraryLeft.C, 0);

  TerminalNode getB() => getToken(ArbitraryLeft.B, 0);
}

