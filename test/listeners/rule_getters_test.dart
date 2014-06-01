library rule_getters;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/rule_getters_parser.dart';
part '../grammars/rule_getters_lexer.dart';
part '../grammars/rule_getters_listener.dart';
part '../grammars/rule_getters_base_listener.dart';

main() {
  test("testRuleGetters1", () {
    var csource = new StringSource("1 2");
    var lexer = new RuleGettersLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new RuleGettersParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["(a (b 1) (b 2))", "1 2 1"];
    expect(parser.log, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testRuleGetters2", () {
    var csource = new StringSource("abc");
    var lexer = new RuleGettersLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new RuleGettersParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["(a (b abc))", "abc"];
    expect(parser.log, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}

class LeafListener extends RuleGettersBaseListener {
  List log;
  LeafListener(this.log);
  void exitA(AContext ctx) {
    if (ctx.childCount == 2) {
      log.add("${ctx.getB(0).start.text} "
        "${ctx.getB(1).start.text} ${ctx.getBs()[0].start.text}");
    }
    else log.add(ctx.getB(0).start.text);
  }
}
