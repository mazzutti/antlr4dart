// Generated from Lexer07.g by antlr4dart
part of lexer07;

class Lexer07 extends Lexer {

  static const int FOO = 1;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x02\x03\x12\x08\x01\x04\x02\x09\x02\x03\x02\x03\x02"
  	"\x03\x02\x03\x02\x06\x02\x0a\x0a\x02\x0d\x02\x0e\x02\x0b\x07\x02\x0e"
  	"\x0a\x02\x0c\x02\x0e\x02\x11\x0b\x02\x02\x02\x03\x03\x03\x03\x02\x02"
  	"\x14\x02\x03\x03\x02\x02\x02\x03\x05\x03\x02\x02\x02\x05\x0f\x07\x68"
  	"\x02\x02\x06\x0e\x07\x71\x02\x02\x07\x09\x07\x63\x02\x02\x08\x0a\x07"
  	"\x64\x02\x02\x09\x08\x03\x02\x02\x02\x0a\x0b\x03\x02\x02\x02\x0b\x09"
  	"\x03\x02\x02\x02\x0b\x0c\x03\x02\x02\x02\x0c\x0e\x03\x02\x02\x02\x0d"
  	"\x06\x03\x02\x02\x02\x0d\x07\x03\x02\x02\x02\x0e\x11\x03\x02\x02\x02"
  	"\x0f\x0d\x03\x02\x02\x02\x0f\x10\x03\x02\x02\x02\x10\x04\x03\x02\x02"
  	"\x02\x11\x0f\x03\x02\x02\x02\x06\x02\x0b\x0d\x0f\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final sharedContextCache = new PredictionContextCache();

  final List<String> modeNames = [
    "DEFAULT_MODE"
  ];

  final List<String> tokenNames = [
    "'\\u0000'", "'\\u0001'"
  ];

  final List<String> ruleNames = [
    "FOO"
  ]; 
  	
  Lexer07(StringSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new LexerAtnSimulator(atn, _decisionToDfa, sharedContextCache, this);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Lexer07.g";
}