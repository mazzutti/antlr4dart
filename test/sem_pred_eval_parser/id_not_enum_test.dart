library id_not_enum;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/id_not_enum.dart';

main() {
  test("testIDnotEnum", () {
    var csource = new StringSource("enum abc enum");
    var lexer = new IDNotEnum(csource);
    var tsource = new CommonTokenSource(lexer);
    tsource.fill();
    var tokens = [
      "[@0,0:3='enum',<2>,1:0]",
      "[@1,5:7='abc',<2>,1:5]",
      "[@2,9:12='enum',<2>,1:9]",
      "[@3,13:12='<EOF>',<-1>,1:13]"
    ];
    var dfa = "s0-' '->:s2=>3\n";
    var result = new List();
    tsource.tokens.forEach((t) => result.add(t.toString()));
    expect(result, equals(tokens));
    var d = lexer.interpreter.decisionToDfa[lexer.mode];
    expect(new LexerDfaSerializer(d).toString(), equals(dfa));
  });
}
