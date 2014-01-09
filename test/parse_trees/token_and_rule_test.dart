library token_and_rule;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/token_and_rule_parser.dart";
part "../grammars/token_and_rule_lexer.dart";

main() {
  test("testTokenAndRuleContextString", () {
    var csource = new StringSource("x");
    var lexer = new TokenAndRuleLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TokenAndRuleParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, [['a', 's'], "(a x)"]);
  });
}
