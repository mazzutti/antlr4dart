library disable_rule;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/disable_rule.dart';

main() {
  test("testDisableRule", () {
    var csource = new StringSource("enum abc");
    var lexer = new DisableRule(csource);
    var tsource = new CommonTokenSource(lexer);
    tsource.fill();
    var tokens = [
      "[@0,0:3='enum',<2>,1:0]",
      "[@1,5:7='abc',<3>,1:5]",
      "[@2,8:7='<EOF>',<-1>,1:8]"
    ];
    var dfa =
      "s0-' '->:s5=>4\n"
      "s0-'a'->:s6=>3\n"
      "s0-'e'->:s1=>3\n"
      ":s1=>3-'n'->:s2=>3\n"
      ":s2=>3-'u'->:s3=>3\n"
      ":s6=>3-'b'->:s6=>3\n"
      ":s6=>3-'c'->:s6=>3\n";
    var expected1 = new List();
    tsource.tokens.forEach((t) => expected1.add(t.toString()));
    expect(tokens, equals(expected1));
    var d = lexer.interpreter.decisionToDfa[lexer.mode];
    expect(new LexerDfaSerializer(d).toString(), equals(dfa));
  });
}
