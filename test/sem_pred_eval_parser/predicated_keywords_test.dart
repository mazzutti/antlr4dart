library predicated_keywords;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/predicated_keywords.dart';

main() {
  test("testPredicatedKeywords", () {
    var csource = new StringSource("enum enu a");
    var lexer = new PredicatedKeywords(csource);
    var tsource = new CommonTokenSource(lexer);
    tsource.fill();
    var tokens = [
      "[@0,0:3='enum',<1>,1:0]",
      "[@1,5:7='enu',<2>,1:5]",
      "[@2,9:9='a',<2>,1:9]",
      "[@3,10:9='<EOF>',<-1>,1:10]"
    ];
    var expected = [
      "enum!",
      "ID enu",
      "ID a"
    ];
    var result = new List();
    tsource.tokens.forEach((t) => result.add(t.toString()));
    expect(result, equals(tokens));
    var d = lexer.interpreter.decisionToDfa[lexer.mode];
    expect(lexer.log, equals(expected));
  });
}
