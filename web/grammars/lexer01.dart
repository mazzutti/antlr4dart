// Generated from Lexer01.g by antlr4dart
part of lexer01;

class Lexer01 extends Lexer {

  static const int ZERO = 1;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x02\x03\x07\x08\x01\x04\x02\x09\x02\x03\x02\x03\x02"
  	"\x02\x02\x03\x03\x03\x03\x02\x02\x06\x02\x03\x03\x02\x02\x02\x03\x05"
  	"\x03\x02\x02\x02\x05\x06\x07\x32\x02\x02\x06\x04\x03\x02\x02\x02\x03"
  	"\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final sharedContextCache = new PredictionContextCache();

  final List<String> modeNames = [
    "DEFAULT_MODE"
  ];

  final List<String> tokenNames = [
    "'\\u0000'", "'\\u0001'"
  ];

  final List<String> ruleNames = [
    "ZERO"
  ]; 
  	
  Lexer01(StringSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new LexerAtnSimulator(atn, _decisionToDfa, sharedContextCache, this);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Lexer01.g";
}