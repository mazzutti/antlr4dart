// Generated from Delegator12.g by antlr4dart
part of delegator12;

class Delegator12 extends Lexer {

  static const int A = 1, WS = 2, B = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x02\x05\x14\x08\x01\x04\x02\x09\x02\x04\x03\x09\x03"
  	"\x04\x04\x09\x04\x03\x02\x03\x02\x03\x02\x03\x02\x03\x03\x03\x03\x03"
  	"\x03\x03\x03\x03\x04\x03\x04\x03\x04\x02\x02\x05\x03\x03\x05\x04\x07"
  	"\x05\x03\x02\x03\x04\x02\x0c\x0c\x22\x22\x13\x02\x03\x03\x02\x02\x02"
  	"\x02\x05\x03\x02\x02\x02\x02\x07\x03\x02\x02\x02\x03\x09\x03\x02\x02"
  	"\x02\x05\x0d\x03\x02\x02\x02\x07\x11\x03\x02\x02\x02\x09\x0a\x07\x63"
  	"\x02\x02\x0a\x0b\x05\x07\x04\x02\x0b\x0c\x08\x02\x02\x02\x0c\x04\x03"
  	"\x02\x02\x02\x0d\x0e\x09\x02\x02\x02\x0e\x0f\x03\x02\x02\x02\x0f\x10"
  	"\x08\x03\x03\x02\x10\x06\x03\x02\x02\x02\x11\x12\x07\x64\x02\x02\x12"
  	"\x13\x08\x04\x04\x02\x13\x08\x03\x02\x02\x02\x03\x02\x05\x03\x02\x02"
  	"\x08\x02\x02\x03\x04\x03";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final sharedContextCache = new PredictionContextCache();

  final List<String> modeNames = [
    "DEFAULT_MODE"
  ];

  final List<String> tokenNames = [
    "'\\u0000'", "'\\u0001'", "'\\u0002'", "'\\u0003'"
  ];

  final List<String> ruleNames = [
    "A", "WS", "B"
  ]; 

  List log = new List();

  Delegator12(StringSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new LexerAtnSimulator(atn, _decisionToDfa, sharedContextCache, this);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Delegator12.g";

  void action(RuleContext localContext, int ruleIndex, int actionIndex) {
    switch (ruleIndex) {
      case 0: _A_action(localContext, actionIndex); break;
      case 2: _B_action(localContext, actionIndex); break;
    }
  }

  void _A_action(RuleContext localContext, int actionIndex) {
    switch (actionIndex) {
      case 0: log.add("M.A"); break;
    }
  }

  void _B_action(RuleContext localContext, int actionIndex) {
    switch (actionIndex) {
      case 1: log.add("S.B"); break;
    }
  }

}