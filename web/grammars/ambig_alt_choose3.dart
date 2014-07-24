// Generated from AmbigAltChoose3.g by antlr4dart
library atn_interpreter_test.ambig_alt_choose3;

import "package:antlr4dart/antlr4dart.dart";

class AmbigAltChoose3 extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0;

  static const int A = 1, B = 2, C = 3, D = 4;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x06\x0e\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x03\x02\x03\x02\x05\x02\x0a\x0a\x02\x03\x02\x03\x02\x03\x02\x02\x02"
  	"\x03\x02\x02\x02\x0e\x02\x09\x03\x02\x02\x02\x04\x05\x07\x03\x02\x02"
  	"\x05\x0a\x07\x04\x02\x02\x06\x07\x07\x03\x02\x02\x07\x0a\x07\x04\x02"
  	"\x02\x08\x0a\x07\x05\x02\x02\x09\x04\x03\x02\x02\x02\x09\x06\x03\x02"
  	"\x02\x02\x09\x08\x03\x02\x02\x02\x0a\x0b\x03\x02\x02\x02\x0b\x0c\x07"
  	"\x06\x02\x02\x0c\x03\x03\x02\x02\x02\x03\x09";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "A", "B", "C", "D"
  ];

  final List<String> ruleNames = [
    "a"
  ];
  AmbigAltChoose3(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "AmbigAltChoose3.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    try {
      enterOuterAlt(localContext, 1);
      state = 7;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          state = 2; 
          match(A);
          state = 3; 
          match(B);
          break;
        case 2:
          state = 4; 
          match(A);
          state = 5; 
          match(B);
          break;
        case 3:
          state = 6; 
          match(C);
          break;
      }
      state = 9; 
      match(D);
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

  int get ruleIndex => AmbigAltChoose3.RULE_A;

  TerminalNode getD() => getToken(AmbigAltChoose3.D, 0);

  TerminalNode getA() => getToken(AmbigAltChoose3.A, 0);

  TerminalNode getC() => getToken(AmbigAltChoose3.C, 0);

  TerminalNode getB() => getToken(AmbigAltChoose3.B, 0);
}

