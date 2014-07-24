// Generated from CharSetNot.g by antlr4dart
part of char_set_not;

class CharSetNot extends Lexer {

  static const int I = 1, WS = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x02\x04\x17\x08\x01\x04\x02\x09\x02\x04\x03\x09\x03"
  	"\x03\x02\x03\x02\x07\x02\x0a\x0a\x02\x0c\x02\x0e\x02\x0d\x0b\x02\x03"
  	"\x02\x03\x02\x03\x03\x06\x03\x12\x0a\x03\x0d\x03\x0e\x03\x13\x03\x03"
  	"\x03\x03\x02\x02\x04\x03\x03\x05\x04\x03\x02\x05\x05\x02\x0c\x0c\x22"
  	"\x22\x63\x64\x05\x02\x0c\x0c\x22\x22\x65\x66\x05\x02\x0c\x0c\x0f\x0f"
  	"\x22\x22\x18\x02\x03\x03\x02\x02\x02\x02\x05\x03\x02\x02\x02\x03\x07"
  	"\x03\x02\x02\x02\x05\x11\x03\x02\x02\x02\x07\x0b\x0a\x02\x02\x02\x08"
  	"\x0a\x0a\x03\x02\x02\x09\x08\x03\x02\x02\x02\x0a\x0d\x03\x02\x02\x02"
  	"\x0b\x09\x03\x02\x02\x02\x0b\x0c\x03\x02\x02\x02\x0c\x0e\x03\x02\x02"
  	"\x02\x0d\x0b\x03\x02\x02\x02\x0e\x0f\x08\x02\x02\x02\x0f\x04\x03\x02"
  	"\x02\x02\x10\x12\x09\x04\x02\x02\x11\x10\x03\x02\x02\x02\x12\x13\x03"
  	"\x02\x02\x02\x13\x11\x03\x02\x02\x02\x13\x14\x03\x02\x02\x02\x14\x15"
  	"\x03\x02\x02\x02\x15\x16\x08\x03\x03\x02\x16\x06\x03\x02\x02\x02\x05"
  	"\x02\x0b\x13\x04\x03\x02\x02\x08\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final sharedContextCache = new PredictionContextCache();

  final List<String> modeNames = [
    "DEFAULT_MODE"
  ];

  final List<String> tokenNames = [
    "'\\u0000'", "'\\u0001'", "'\\u0002'"
  ];

  final List<String> ruleNames = [
    "I", "WS"
  ]; 

  List log = new List();

  CharSetNot(StringSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new LexerAtnSimulator(atn, _decisionToDfa, sharedContextCache, this);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "CharSetNot.g";

  void action(RuleContext localContext, int ruleIndex, int actionIndex) {
    switch (ruleIndex) {
      case 0: _I_action(localContext, actionIndex); break;
    }
  }

  void _I_action(RuleContext localContext, int actionIndex) {
    switch (actionIndex) {
      case 0: log.add("I"); break;
    }
  }

}