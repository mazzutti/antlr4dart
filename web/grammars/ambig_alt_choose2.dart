// Generated from AmbigAltChoose2.g by antlr4dart
library atn_interpreter_test.ambig_alt_choose2;

import "package:antlr4dart/antlr4dart.dart";

class AmbigAltChoose2 extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0;

  static const int A = 1, B = 2, C = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x0d\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x03\x02\x05\x02\x09\x0a\x02\x03\x02\x03\x02\x03\x02\x02\x02\x03\x02"
  	"\x02\x02\x0c\x02\x08\x03\x02\x02\x02\x04\x05\x07\x03\x02\x02\x05\x09"
  	"\x07\x04\x02\x02\x06\x07\x07\x03\x02\x02\x07\x09\x07\x04\x02\x02\x08"
  	"\x04\x03\x02\x02\x02\x08\x06\x03\x02\x02\x02\x09\x0a\x03\x02\x02\x02"
  	"\x0a\x0b\x07\x05\x02\x02\x0b\x03\x03\x02\x02\x02\x03\x08";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "A", "B", "C"
  ];

  final List<String> ruleNames = [
    "a"
  ];
  AmbigAltChoose2(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "AmbigAltChoose2.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    try {
      enterOuterAlt(localContext, 1);
      state = 6;
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
      }
      state = 8; 
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

  int get ruleIndex => AmbigAltChoose2.RULE_A;

  TerminalNode getA() => getToken(AmbigAltChoose2.A, 0);

  TerminalNode getC() => getToken(AmbigAltChoose2.C, 0);

  TerminalNode getB() => getToken(AmbigAltChoose2.B, 0);
}

