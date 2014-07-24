// Generated from Lexer03.g by antlr4dart
part of lexer03;

class Lexer03 extends Lexer {

  static const int ZERO = 1, ONE = 2, FOOZE = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x02\x05\x13\x08\x01\x04\x02\x09\x02\x04\x03\x09\x03"
  	"\x04\x04\x09\x04\x03\x02\x03\x02\x03\x03\x03\x03\x03\x04\x03\x04\x03"
  	"\x04\x03\x04\x03\x04\x03\x04\x02\x02\x05\x03\x03\x05\x04\x07\x05\x03"
  	"\x02\x02\x12\x02\x03\x03\x02\x02\x02\x02\x05\x03\x02\x02\x02\x02\x07"
  	"\x03\x02\x02\x02\x03\x09\x03\x02\x02\x02\x05\x0b\x03\x02\x02\x02\x07"
  	"\x0d\x03\x02\x02\x02\x09\x0a\x07\x32\x02\x02\x0a\x04\x03\x02\x02\x02"
  	"\x0b\x0c\x07\x33\x02\x02\x0c\x06\x03\x02\x02\x02\x0d\x0e\x07\x68\x02"
  	"\x02\x0e\x0f\x07\x71\x02\x02\x0f\x10\x07\x71\x02\x02\x10\x11\x07\x7c"
  	"\x02\x02\x11\x12\x07\x67\x02\x02\x12\x08\x03\x02\x02\x02\x03\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final sharedContextCache = new PredictionContextCache();

  final List<String> modeNames = [
    "DEFAULT_MODE"
  ];

  final List<String> tokenNames = [
    "'\\u0000'", "'\\u0001'", "'\\u0002'", "'\\u0003'"
  ];

  final List<String> ruleNames = [
    "ZERO", "ONE", "FOOZE"
  ]; 
  	
  Lexer03(StringSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new LexerAtnSimulator(atn, _decisionToDfa, sharedContextCache, this);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Lexer03.g";
}