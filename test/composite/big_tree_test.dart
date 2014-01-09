library big_tree;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/big_tree_parser.dart';

main() {
  test("testBigTreeOfImports", () {
    var expectedTokenIDToTypeMap = [
      "EOF = -1",
      "M = 1",
      "S = 2",
      "T = 3",
      "A = 4",
      "B = 5",
      "C = 6"
    ];
    var actualTokenIDToTypeMap = [
      "EOF = ${BigTreeParser.EOF}",
      "M = ${BigTreeParser.M}",
      "S = ${BigTreeParser.S}",
      "T = ${BigTreeParser.T}",
      "A = ${BigTreeParser.A}",
      "B = ${BigTreeParser.B}",
      "C = ${BigTreeParser.C}"
    ];

    expect(actualTokenIDToTypeMap, equals(expectedTokenIDToTypeMap));
    var parser = new BigTreeParser(null);
    var actual = parser.tokenNames.where((String n) => n.contains(new RegExp("'(.)+'")));
    expect(actual, equals([]));
  });
}
