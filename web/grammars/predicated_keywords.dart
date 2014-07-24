// Generated from PredicatedKeywords.g by antlr4dart
part of predicated_keywords;

class PredicatedKeywords extends Lexer {

  static const int ENUM = 1, ID = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x02\x05\x1c\x08\x01\x04\x02\x09\x02\x04\x03\x09\x03"
  	"\x04\x04\x09\x04\x03\x02\x06\x02\x0b\x0a\x02\x0d\x02\x0e\x02\x0c\x03"
  	"\x02\x03\x02\x03\x02\x03\x03\x06\x03\x13\x0a\x03\x0d\x03\x0e\x03\x14"
  	"\x03\x03\x03\x03\x03\x04\x03\x04\x03\x04\x03\x04\x02\x02\x05\x03\x03"
  	"\x05\x04\x07\x05\x03\x02\x04\x03\x02\x63\x7c\x04\x02\x0c\x0c\x22\x22"
  	"\x1d\x02\x03\x03\x02\x02\x02\x02\x05\x03\x02\x02\x02\x02\x07\x03\x02"
  	"\x02\x02\x03\x0a\x03\x02\x02\x02\x05\x12\x03\x02\x02\x02\x07\x18\x03"
  	"\x02\x02\x02\x09\x0b\x09\x02\x02\x02\x0a\x09\x03\x02\x02\x02\x0b\x0c"
  	"\x03\x02\x02\x02\x0c\x0a\x03\x02\x02\x02\x0c\x0d\x03\x02\x02\x02\x0d"
  	"\x0e\x03\x02\x02\x02\x0e\x0f\x06\x02\x02\x02\x0f\x10\x08\x02\x02\x02"
  	"\x10\x04\x03\x02\x02\x02\x11\x13\x09\x02\x02\x02\x12\x11\x03\x02\x02"
  	"\x02\x13\x14\x03\x02\x02\x02\x14\x12\x03\x02\x02\x02\x14\x15\x03\x02"
  	"\x02\x02\x15\x16\x03\x02\x02\x02\x16\x17\x08\x03\x03\x02\x17\x06\x03"
  	"\x02\x02\x02\x18\x19\x09\x03\x02\x02\x19\x1a\x03\x02\x02\x02\x1a\x1b"
  	"\x08\x04\x04\x02\x1b\x08\x03\x02\x02\x02\x05\x02\x0c\x14\x05\x03\x02"
  	"\x02\x03\x03\x03\x08\x02\x02";

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

  List log = new List();

  PredicatedKeywords(StringSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new LexerAtnSimulator(atn, _decisionToDfa, sharedContextCache, this);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "PredicatedKeywords.g";

  void action(RuleContext localContext, int ruleIndex, int actionIndex) {
    switch (ruleIndex) {
      case 0: _ENUM_action(localContext, actionIndex); break;
      case 1: _ID_action(localContext, actionIndex); break;
    }
  }

  void _ENUM_action(RuleContext localContext, int actionIndex) {
    switch (actionIndex) {
      case 0: log.add("enum!"); break;
    }
  }

  void _ID_action(RuleContext localContext, int actionIndex) {
    switch (actionIndex) {
      case 1: log.add("ID $text"); break;
    }
  }

  bool semanticPredicate(RuleContext localContext, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 0: return _ENUMSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _ENUMSemanticPredicate(RuleContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return text == "enum";
    }
    return true;
  }

}