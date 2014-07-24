library indent;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/indent.dart';

main() {
  test("testIndent", () {
    var csource = new StringSource("abc\n  def  \n");
    var lexer = new Indent(csource);
    var tsource = new CommonTokenSource(lexer);
    tsource.fill();
    var tokens = [
      "[@0,0:2='abc',<1>,1:0]",    // ID
      "[@1,3:3='\\n',<3>,1:3]",    // NL
      "[@2,4:5='  ',<2>,2:0]",     // INDENT
      "[@3,6:8='def',<1>,2:2]",    // ID
      "[@4,9:10='  ',<4>,2:5]",    // WS
      "[@5,11:11='\\n',<3>,2:7]",
      "[@6,12:11='<EOF>',<-1>,3:8]"
    ];
    var dfa =
      "s0-'\n"
      "'->:s2=>3\n"
      "s0-'a'->:s1=>1\n"
      "s0-'d'->:s1=>1\n"
      ":s1=>1-'b'->:s1=>1\n"
      ":s1=>1-'c'->:s1=>1\n"
      ":s1=>1-'e'->:s1=>1\n"
      ":s1=>1-'f'->:s1=>1\n";
    var result = new List();
    tsource.tokens.forEach((t) => result.add(t.toString()));
    expect(result, equals(tokens));
    var d = lexer.interpreter.decisionToDfa[lexer.mode];
    expect(new LexerDfaSerializer(d).toString(), equals(dfa));
    expect(lexer.log, equals(["INDENT"]));
  });
}
