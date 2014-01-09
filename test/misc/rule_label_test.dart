library rule_label;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/rule_label_lexer.dart";
part "../grammars/rule_label_parser.dart";

main() {
  test('testValidRuleLabel', () {
    var source = new StringSource("   a a a a  ");
    var lexer = new RuleLabelLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new RuleLabelParser(tSource);
    var a = parser.a().bla;
    expect(a[0].tokenIndex, equals(1));
    expect(a[1].tokenIndex, equals(7));
    expect(a[2], equals("a a a a"));
  });
}
