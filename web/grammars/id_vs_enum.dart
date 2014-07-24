// Generated from IDVsEnum.g by antlr4dart
part of id_vs_enum;

class IDVsEnum extends Lexer {

  static const int ENUM = 1, ID = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x02\x05\x19\x08\x01\x04\x02\x09\x02\x04\x03\x09\x03"
  	"\x04\x04\x09\x04\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03\x02\x03"
  	"\x02\x03\x03\x06\x03\x12\x0a\x03\x0d\x03\x0e\x03\x13\x03\x04\x03\x04"
  	"\x03\x04\x03\x04\x02\x02\x05\x03\x03\x05\x04\x07\x05\x03\x02\x03\x04"
  	"\x02\x0c\x0c\x22\x22\x19\x02\x03\x03\x02\x02\x02\x02\x05\x03\x02\x02"
  	"\x02\x02\x07\x03\x02\x02\x02\x03\x09\x03\x02\x02\x02\x05\x11\x03\x02"
  	"\x02\x02\x07\x15\x03\x02\x02\x02\x09\x0a\x07\x67\x02\x02\x0a\x0b\x07"
  	"\x70\x02\x02\x0b\x0c\x07\x77\x02\x02\x0c\x0d\x07\x6f\x02\x02\x0d\x0e"
  	"\x03\x02\x02\x02\x0e\x0f\x06\x02\x02\x02\x0f\x04\x03\x02\x02\x02\x10"
  	"\x12\x04\x63\x7c\x02\x11\x10\x03\x02\x02\x02\x12\x13\x03\x02\x02\x02"
  	"\x13\x11\x03\x02\x02\x02\x13\x14\x03\x02\x02\x02\x14\x06\x03\x02\x02"
  	"\x02\x15\x16\x09\x02\x02\x02\x16\x17\x03\x02\x02\x02\x17\x18\x08\x04"
  	"\x02\x02\x18\x08\x03\x02\x02\x02\x04\x02\x13\x03\x08\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final sharedContextCache = new PredictionContextCache();

  final List<String> modeNames = [
    "DEFAULT_MODE"
  ];

  final List<String> tokenNames = [
    "'\\u0000'", "'\\u0001'", "'\\u0002'", "'\\u0003'"
  ];

  final List<String> ruleNames = [
    "ENUM", "ID", "WS"
  ]; 
  	
  IDVsEnum(StringSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new LexerAtnSimulator(atn, _decisionToDfa, sharedContextCache, this);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "IDVsEnum.g";

  bool semanticPredicate(RuleContext localContext, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 0: return _ENUMSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _ENUMSemanticPredicate(RuleContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return false;
    }
    return true;
  }

}