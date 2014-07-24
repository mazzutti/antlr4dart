// Generated from MustTrackPrevious5.g by antlr4dart
library atn_interpreter_test.must_track_previous5;

import "package:antlr4dart/antlr4dart.dart";

class MustTrackPrevious5 extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0;

  static const int A = 1, B = 2, C = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x0f\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x03\x02\x03\x02\x03\x02\x05\x02\x0b\x0a\x02\x03\x02\x03\x02\x03\x02"
  	"\x02\x02\x03\x02\x02\x02\x0f\x02\x0a\x03\x02\x02\x02\x04\x05\x07\x03"
  	"\x02\x02\x05\x0b\x07\x04\x02\x02\x06\x0b\x07\x03\x02\x02\x07\x08\x07"
  	"\x03\x02\x02\x08\x09\x07\x04\x02\x02\x09\x0b\x07\x05\x02\x02\x0a\x04"
  	"\x03\x02\x02\x02\x0a\x06\x03\x02\x02\x02\x0a\x07\x03\x02\x02\x02\x0b"
  	"\x0c\x03\x02\x02\x02\x0c\x0d\x07\x02\x02\x03\x0d\x03\x03\x02\x02\x02"
  	"\x03\x0a";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "A", "B", "C"
  ];

  final List<String> ruleNames = [
    "a"
  ];
  MustTrackPrevious5(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "MustTrackPrevious5.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    try {
      enterOuterAlt(localContext, 1);
      state = 8;
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
          break;
        case 3:
          state = 5; 
          match(A);
          state = 6; 
          match(B);
          state = 7; 
          match(C);
          break;
      }
      state = 10; 
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
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => MustTrackPrevious5.RULE_A;

  TerminalNode getEOF() => getToken(MustTrackPrevious5.EOF, 0);

  TerminalNode getA() => getToken(MustTrackPrevious5.A, 0);

  TerminalNode getC() => getToken(MustTrackPrevious5.C, 0);

  TerminalNode getB() => getToken(MustTrackPrevious5.B, 0);
}

