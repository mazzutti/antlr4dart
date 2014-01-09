library rule;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/rule_lexer.dart";
part "../grammars/rule_parser.dart";

main() {
  test('testValidRule', () {
    var source = new StringSource("   a a a a  ");
    var lexer = new RuleLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new RuleParser(tSource);
    var ret = parser.a().bla;
    expect(ret[0].tokenIndex, equals(1));
    expect(ret[1], isNull);
    expect(ret[2], equals("a a a a"));
  });
}
