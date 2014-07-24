// Generated from RecursiveLeftParser.g by antlr4dart
library atn_interpreter_test.recursive_left_parser;

import "package:antlr4dart/antlr4dart.dart";

class RecursiveLeftParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0, RULE_E = 1;

  static const int A = 1, B = 2, C = 3, LP = 4, RP = 5, INT = 6;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x08\x16\x04\x02\x09\x02\x04\x03\x09\x03\x03\x02"
  	"\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x05\x02\x0d\x0a\x02\x03\x03"
  	"\x03\x03\x03\x03\x03\x03\x03\x03\x05\x03\x14\x0a\x03\x03\x03\x02\x02"
  	"\x04\x02\x04\x02\x02\x15\x02\x0c\x03\x02\x02\x02\x04\x13\x03\x02\x02"
  	"\x02\x06\x07\x05\x04\x03\x02\x07\x08\x07\x04\x02\x02\x08\x0d\x03\x02"
  	"\x02\x02\x09\x0a\x05\x04\x03\x02\x0a\x0b\x07\x05\x02\x02\x0b\x0d\x03"
  	"\x02\x02\x02\x0c\x06\x03\x02\x02\x02\x0c\x09\x03\x02\x02\x02\x0d\x03"
  	"\x03\x02\x02\x02\x0e\x0f\x07\x06\x02\x02\x0f\x10\x05\x04\x03\x02\x10"
  	"\x11\x07\x07\x02\x02\x11\x14\x03\x02\x02\x02\x12\x14\x07\x08\x02\x02"
  	"\x13\x0e\x03\x02\x02\x02\x13\x12\x03\x02\x02\x02\x14\x05\x03\x02\x02"
  	"\x02\x04\x0c\x13";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "A", "B", "C", "LP", "RP", "INT"
  ];

  final List<String> ruleNames = [
    "a", "e"
  ];
  RecursiveLeftParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "RecursiveLeftParser.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    try {
      state = 10;
      switch (interpreter.adaptivePredict(inputSource, 0, context)) {
        case 1:
          enterOuterAlt(localContext, 1);
          state = 4; 
          e();
          state = 5; 
          match(B);
          break;
        case 2:
          enterOuterAlt(localContext, 2);
          state = 7; 
          e();
          state = 8; 
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
  EContext e() {
    var localContext = new EContext(context, state);
    enterRule(localContext, 2, RULE_E);
    try {
      state = 17;
      switch (inputSource.lookAhead(1)) {
        case LP: 
          enterOuterAlt(localContext, 1);
          state = 12; 
          match(LP);
          state = 13; 
          e();
          state = 14; 
          match(RP); 
          break;
        case INT: 
          enterOuterAlt(localContext, 2);
          state = 16; 
          match(INT); 
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

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => RecursiveLeftParser.RULE_A;

  TerminalNode getC() => getToken(RecursiveLeftParser.C, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);

  TerminalNode getB() => getToken(RecursiveLeftParser.B, 0);
}

class EContext extends ParserRuleContext {

  EContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => RecursiveLeftParser.RULE_E;

  TerminalNode getINT() => getToken(RecursiveLeftParser.INT, 0);

  TerminalNode getLP() => getToken(RecursiveLeftParser.LP, 0);

  TerminalNode getRP() => getToken(RecursiveLeftParser.RP, 0);

  EContext getE() => getRuleContext((c) => c is EContext, 0);
}

