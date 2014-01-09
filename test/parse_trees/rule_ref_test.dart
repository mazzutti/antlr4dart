library rule_ref;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/rule_ref_parser.dart";
part "../grammars/rule_ref_lexer.dart";

main() {
  test("testRuleRef", () {
    var csource = new StringSource("yx");
    var lexer = new RuleRefLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new RuleRefParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, ["(a (b y) x)"]);
  });
}
