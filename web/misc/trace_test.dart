library trace_;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/trace_parser.dart";
part "../grammars/trace_lexer.dart";
part "../grammars/trace_listener.dart";
part "../grammars/trace_base_listener.dart";

main() {
  List<String> parserTraces = const [
    '>a', '>b', '>c', '<c', '>c', '<c', '<b', '<a'
  ];

  test('testValidTrace', () {
    var source = new StringSource('< 1 + 2 + 3 >');
    var lexer = new TraceLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new TraceParser(tSource);
    var traceListener = new TraceParserListener(parser);
    parser.addParseListener(traceListener);
    parser.a();
    expect(traceListener.traces, equals(parserTraces));
  });
}

class TraceParserListener extends TraceBaseListener {

  List<String> traces;
  TraceParser parser;

  TraceParserListener(this.parser) {
    traces = new List<String>();
  }

  void enterEveryRule(ParserRuleContext ctx) {
    traces.add(">${parser.ruleNames[ctx.ruleIndex]}");
  }

  void exitEveryRule(ParserRuleContext ctx) {
    traces.add("<${parser.ruleNames[ctx.ruleIndex]}");
  }
}
