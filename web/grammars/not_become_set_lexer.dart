// Generated from NotBecomeSet.g by antlr4dart
part of not_become_set;

class NotBecomeSetLexer extends Lexer {

  static const int C = 1;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x02\x03\x12\x08\x01\x04\x02\x09\x02\x04\x03\x09\x03"
  	"\x04\x04\x09\x04\x03\x02\x03\x02\x03\x03\x03\x03\x03\x03\x03\x04\x03"
  	"\x04\x05\x04\x11\x0a\x04\x02\x02\x05\x03\x02\x05\x02\x07\x03\x03\x02"
  	"\x02\x10\x02\x07\x03\x02\x02\x02\x03\x09\x03\x02\x02\x02\x05\x0b\x03"
  	"\x02\x02\x02\x07\x10\x03\x02\x02\x02\x09\x0a\x04\x33\x34\x02\x0a\x04"
  	"\x03\x02\x02\x02\x0b\x0c\x07\x35\x02\x02\x0c\x0d\x07\x36\x02\x02\x0d"
  	"\x06\x03\x02\x02\x02\x0e\x11\x05\x03\x02\x02\x0f\x11\x05\x05\x03\x02"
  	"\x10\x0e\x03\x02\x02\x02\x10\x0f\x03\x02\x02\x02\x11\x08\x03\x02\x02"
  	"\x02\x04\x02\x10\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final sharedContextCache = new PredictionContextCache();

  final List<String> modeNames = [
    "DEFAULT_MODE"
  ];

  final List<String> tokenNames = [
    "'\\u0000'", "'\\u0001'"
  ];

  final List<String> ruleNames = [
    "A", "B", "C"
  ]; 

  List log = new List();

  NotBecomeSetLexer(StringSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new LexerAtnSimulator(atn, _decisionToDfa, sharedContextCache, this);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "NotBecomeSet.g";
}