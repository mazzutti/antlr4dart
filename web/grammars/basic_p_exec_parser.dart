// Generated from BasicPExec.g by antlr4dart
part of basic_p_exec;

class BasicPExecParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_A = 0;

  static const int ID = 1, INT = 2, WS = 3;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x05\x09\x04\x02\x09\x02\x03\x02\x03\x02\x03\x02"
  	"\x03\x02\x03\x02\x02\x02\x03\x02\x02\x02\x07\x02\x04\x03\x02\x02\x02"
  	"\x04\x05\x07\x03\x02\x02\x05\x06\x07\x04\x02\x02\x06\x07\x08\x02\x01"
  	"\x02\x07\x03\x03\x02\x02\x02\x02";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "ID", "INT", "WS"
  ];

  final List<String> ruleNames = [
    "a"
  ];

  List log = new List();

  BasicPExecParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "BasicPExec.g";
  AContext a() {
    var localContext = new AContext(context, state);
    enterRule(localContext, 0, RULE_A);
    try {
      enterOuterAlt(localContext, 1);
      state = 2; 
      match(ID);
      state = 3; 
      match(INT);
      log.add(inputSource.getText(localContext.start, inputSource.lookToken(-1)));
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
}

class AContext extends ParserRuleContext {

  AContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => BasicPExecParser.RULE_A;

  TerminalNode getINT() => getToken(BasicPExecParser.INT, 0);

  TerminalNode getID() => getToken(BasicPExecParser.ID, 0);
}

