// Generated from PositionSensitive.g by antlr4dart
part of position_sensitive;

class PositionSensitive extends Lexer {

  static const int WORD1 = 1, WORD2 = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x02\x05\x25\x08\x01\x04\x02\x09\x02\x04\x03\x09\x03"
  	"\x04\x04\x09\x04\x04\x05\x09\x05\x04\x06\x09\x06\x03\x02\x06\x02\x0f"
  	"\x0a\x02\x0d\x02\x0e\x02\x10\x03\x02\x03\x02\x03\x03\x06\x03\x16\x0a"
  	"\x03\x0d\x03\x0e\x03\x17\x03\x03\x03\x03\x03\x04\x03\x04\x03\x04\x03"
  	"\x05\x03\x05\x03\x05\x03\x06\x03\x06\x03\x06\x03\x06\x02\x02\x07\x03"
  	"\x03\x05\x04\x07\x02\x09\x02\x0b\x05\x03\x02\x04\x04\x02\x43\x5c\x63"
  	"\x7c\x04\x02\x0c\x0c\x22\x22\x24\x02\x03\x03\x02\x02\x02\x02\x05\x03"
  	"\x02\x02\x02\x02\x0b\x03\x02\x02\x02\x03\x0e\x03\x02\x02\x02\x05\x15"
  	"\x03\x02\x02\x02\x07\x1b\x03\x02\x02\x02\x09\x1e\x03\x02\x02\x02\x0b"
  	"\x21\x03\x02\x02\x02\x0d\x0f\x05\x07\x04\x02\x0e\x0d\x03\x02\x02\x02"
  	"\x0f\x10\x03\x02\x02\x02\x10\x0e\x03\x02\x02\x02\x10\x11\x03\x02\x02"
  	"\x02\x11\x12\x03\x02\x02\x02\x12\x13\x08\x02\x02\x02\x13\x04\x03\x02"
  	"\x02\x02\x14\x16\x05\x09\x05\x02\x15\x14\x03\x02\x02\x02\x16\x17\x03"
  	"\x02\x02\x02\x17\x15\x03\x02\x02\x02\x17\x18\x03\x02\x02\x02\x18\x19"
  	"\x03\x02\x02\x02\x19\x1a\x08\x03\x03\x02\x1a\x06\x03\x02\x02\x02\x1b"
  	"\x1c\x06\x04\x02\x02\x1c\x1d\x09\x02\x02\x02\x1d\x08\x03\x02\x02\x02"
  	"\x1e\x1f\x06\x05\x03\x02\x1f\x20\x09\x02\x02\x02\x20\x0a\x03\x02\x02"
  	"\x02\x21\x22\x09\x03\x02\x02\x22\x23\x03\x02\x02\x02\x23\x24\x08\x06"
  	"\x04\x02\x24\x0c\x03\x02\x02\x02\x05\x02\x10\x17\x05\x03\x02\x02\x03"
  	"\x03\x03\x08\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final sharedContextCache = new PredictionContextCache();

  final List<String> modeNames = [
    "DEFAULT_MODE"
  ];

  final List<String> tokenNames = [
    "'\\u0000'", "'\\u0001'", "'\\u0002'", "'\\u0003'"
  ];

  final List<String> ruleNames = [
    "WORD1", "WORD2", "ID1", "ID2", "WS"
  ]; 

  List log = new List();

  PositionSensitive(StringSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new LexerAtnSimulator(atn, _decisionToDfa, sharedContextCache, this);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "PositionSensitive.g";

  void action(RuleContext localContext, int ruleIndex, int actionIndex) {
    switch (ruleIndex) {
      case 0: _WORD1_action(localContext, actionIndex); break;
      case 1: _WORD2_action(localContext, actionIndex); break;
    }
  }

  void _WORD2_action(RuleContext localContext, int actionIndex) {
    switch (actionIndex) {
      case 1: log.add(text); break;
    }
  }

  void _WORD1_action(RuleContext localContext, int actionIndex) {
    switch (actionIndex) {
      case 0: log.add(text); break;
    }
  }

  bool semanticPredicate(RuleContext localContext, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 2: return _ID1SemanticPredicate(localContext, predIndex);
      case 3: return _ID2SemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _ID2SemanticPredicate(RuleContext localContext, int predIndex) {
    switch (predIndex) {
      case 1: return charPositionInLine >= 2;
    }
    return true;
  }

  bool _ID1SemanticPredicate(RuleContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return charPositionInLine < 2;
    }
    return true;
  }

}