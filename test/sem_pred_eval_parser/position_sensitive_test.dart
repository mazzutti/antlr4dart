library position_sensitive;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/position_sensitive.dart';

main() {
  test("testLexerInputPositionSensitivePredicates", () {
    var csource = new StringSource("a cde\nabcde\n");
    var lexer = new PositionSensitive(csource);
    var tsource = new CommonTokenSource(lexer);
    tsource.fill();
    var tokens = [
      "[@0,0:0='a',<1>,1:0]",
      "[@1,2:4='cde',<2>,1:2]",
      "[@2,6:7='ab',<1>,2:0]",
      "[@3,8:10='cde',<2>,2:2]",
      "[@4,12:11='<EOF>',<-1>,3:0]"
    ];
    var expected = [
      "a",
      "cde",
      "ab",
      "cde"
    ];
    var result = new List();
    tsource.tokens.forEach((t) => result.add(t.toString()));
    expect(result, equals(tokens));
    var d = lexer.interpreter.decisionToDfa[lexer.mode];
    expect(lexer.log, equals(expected));
  });
}
