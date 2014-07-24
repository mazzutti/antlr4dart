library id_vs_enum;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/id_vs_enum.dart';

main() {
  test("testIDvsEnum", () {
    var csource = new StringSource("enum abc enum");
    var lexer = new IDVsEnum(csource);
    var tsource = new CommonTokenSource(lexer);
    tsource.fill();
    var tokens = [
      "[@0,0:3='enum',<2>,1:0]",
      "[@1,5:7='abc',<2>,1:5]",
      "[@2,9:12='enum',<2>,1:9]",
      "[@3,13:12='<EOF>',<-1>,1:13]"
    ];
    var dfa =
      "s0-' '->:s5=>3\n"
      "s0-'a'->:s4=>2\n"
      "s0-'e'->:s1=>2\n"
      ":s1=>2-'n'->:s2=>2\n"
      ":s2=>2-'u'->:s3=>2\n"
      ":s4=>2-'b'->:s4=>2\n"
      ":s4=>2-'c'->:s4=>2\n";
    var result = new List();
    tsource.tokens.forEach((t) => result.add(t.toString()));
    expect(result, equals(tokens));
    var d = lexer.interpreter.decisionToDfa[lexer.mode];
    expect(new LexerDfaSerializer(d).toString(), equals(dfa));
  });
}
