// Generated from NonGreedyTermination2.g by antlr4dart
part of non_greedy_termination2;

class NonGreedyTermination2 extends Lexer {

  static const int STRING = 1;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x02\x03\x0f\x08\x01\x04\x02\x09\x02\x03\x02\x03\x02"
  	"\x03\x02\x03\x02\x06\x02\x0a\x0a\x02\x0d\x02\x0e\x02\x0b\x03\x02\x03"
  	"\x02\x03\x0b\x02\x03\x03\x03\x03\x02\x02\x10\x02\x03\x03\x02\x02\x02"
  	"\x03\x05\x03\x02\x02\x02\x05\x09\x07\x24\x02\x02\x06\x07\x07\x24\x02"
  	"\x02\x07\x0a\x07\x24\x02\x02\x08\x0a\x0b\x02\x02\x02\x09\x06\x03\x02"
  	"\x02\x02\x09\x08\x03\x02\x02\x02\x0a\x0b\x03\x02\x02\x02\x0b\x0c\x03"
  	"\x02\x02\x02\x0b\x09\x03\x02\x02\x02\x0c\x0d\x03\x02\x02\x02\x0d\x0e"
  	"\x07\x24\x02\x02\x0e\x04\x03\x02\x02\x02\x05\x02\x09\x0b\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final sharedContextCache = new PredictionContextCache();

  final List<String> modeNames = [
    "DEFAULT_MODE"
  ];

  final List<String> tokenNames = [
    "'\\u0000'", "'\\u0001'"
  ];

  final List<String> ruleNames = [
    "STRING"
  ]; 
  	
  NonGreedyTermination2(StringSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new LexerAtnSimulator(atn, _decisionToDfa, sharedContextCache, this);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "NonGreedyTermination2.g";
}