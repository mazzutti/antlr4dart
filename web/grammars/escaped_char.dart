// Generated from EscapedChar.g by antlr4dart
part of escaped_char;

class EscapedChar extends Lexer {

  static const int DASHBRACK = 1, WS = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x02\x04\x15\x08\x01\x04\x02\x09\x02\x04\x03\x09\x03"
  	"\x03\x02\x06\x02\x09\x0a\x02\x0d\x02\x0e\x02\x0a\x03\x02\x03\x02\x03"
  	"\x03\x06\x03\x10\x0a\x03\x0d\x03\x0e\x03\x11\x03\x03\x03\x03\x02\x02"
  	"\x04\x03\x03\x05\x04\x03\x02\x04\x04\x02\x2f\x2f\x5e\x5f\x03\x02\x22"
  	"\x22\x16\x02\x03\x03\x02\x02\x02\x02\x05\x03\x02\x02\x02\x03\x08\x03"
  	"\x02\x02\x02\x05\x0f\x03\x02\x02\x02\x07\x09\x09\x02\x02\x02\x08\x07"
  	"\x03\x02\x02\x02\x09\x0a\x03\x02\x02\x02\x0a\x08\x03\x02\x02\x02\x0a"
  	"\x0b\x03\x02\x02\x02\x0b\x0c\x03\x02\x02\x02\x0c\x0d\x08\x02\x02\x02"
  	"\x0d\x04\x03\x02\x02\x02\x0e\x10\x09\x03\x02\x02\x0f\x0e\x03\x02\x02"
  	"\x02\x10\x11\x03\x02\x02\x02\x11\x0f\x03\x02\x02\x02\x11\x12\x03\x02"
  	"\x02\x02\x12\x13\x03\x02\x02\x02\x13\x14\x08\x03\x03\x02\x14\x06\x03"
  	"\x02\x02\x02\x05\x02\x0a\x11\x04\x03\x02\x02\x08\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final sharedContextCache = new PredictionContextCache();

  final List<String> modeNames = [
    "DEFAULT_MODE"
  ];

  final List<String> tokenNames = [
    "'\\u0000'", "'\\u0001'", "'\\u0002'"
  ];

  final List<String> ruleNames = [
    "DASHBRACK", "WS"
  ]; 

  List log = new List();

  EscapedChar(StringSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new LexerAtnSimulator(atn, _decisionToDfa, sharedContextCache, this);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "EscapedChar.g";

  void action(RuleContext localContext, int ruleIndex, int actionIndex) {
    switch (ruleIndex) {
      case 0: _DASHBRACK_action(localContext, actionIndex); break;
    }
  }

  void _DASHBRACK_action(RuleContext localContext, int actionIndex) {
    switch (actionIndex) {
      case 0: log.add("DASHBRACK"); break;
    }
  }

}