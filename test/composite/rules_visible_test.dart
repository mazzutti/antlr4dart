library rules_visible;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/rules_visible_parser.dart';

main() {
  test("testRulesVisibleThroughMultilevelImport", () {
    var expectedTokenIDToTypeMap = [
      "EOF = -1",
      "M = 1",
      "T = 2",
    ];
    var actualTokenIDToTypeMap = [
      "EOF = ${RulesVisibleParser.EOF}",
      "M = ${RulesVisibleParser.M}",
      "T = ${RulesVisibleParser.T}"
    ];

    expect(actualTokenIDToTypeMap, equals(expectedTokenIDToTypeMap));
    var parser = new RulesVisibleParser(null);
    var actual = parser.tokenNames.where((String n) => n.contains(new RegExp("'(.)+'")));
    expect(actual, equals([]));
  });
}
