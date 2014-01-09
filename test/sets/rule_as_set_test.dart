library rule_as_set;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/rule_as_set_parser.dart';
part '../grammars/rule_as_set_lexer.dart';

main() {
  test("testRuleAsSet", () {
    var csource = new StringSource("b");
    var lexer = new RuleAsSetLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new RuleAsSetParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["b"]));
  });
}
