library imp_rule;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/imp_rule_parser.dart';
part '../grammars/imp_rule_lexer.dart';

main() {
  test("testImportedRuleWithAction", () {
    var csource = new StringSource("b");
    var lexer = new ImpRuleLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ImpRuleParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
