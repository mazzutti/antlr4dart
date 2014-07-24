// Generated from Finally.g by antlr4dart
part of finally_block;

class FinallyParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_PROG = 0;

  static const int ID = 1, WS = 2;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x04\x08\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x03\x02\x02\x02\x03\x02\x02\x02\x06\x02\x04\x03\x02\x02\x02\x04\x05"
  	"\x07\x03\x02\x02\x05\x06\x08\x02\x01\x02\x06\x03\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "ID", "WS"
  ];

  final List<String> ruleNames = [
    "prog"
  ];

  List events = new List();

  FinallyParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "Finally.g";
  ProgContext prog() {
    var localContext = new ProgContext(context, state);
    enterRule(localContext, 0, RULE_PROG);
    try {
      enterOuterAlt(localContext, 1);
      state = 2; 
      match(ID);
      throw new Exception("quux");
    }  catch (e) {
      events.add('catch');
    } finally {
      events.add('finally');
      exitRule();
    }
    return localContext;
  }
}

class ProgContext extends ParserRuleContext {

  ProgContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => FinallyParser.RULE_PROG;

  TerminalNode getID() => getToken(FinallyParser.ID, 0);
}

