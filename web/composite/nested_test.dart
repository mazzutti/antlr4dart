library nested;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/nested_parser.dart';

main() {
  test("testNestedComposite", () {
    var expectedTokenIDToTypeMap = [
      "EOF = -1",
      "T4 = 1",
      "T3 = 2",
    ];
    var actualTokenIDToTypeMap = [
      "EOF = ${NestedParser.EOF}",
      "T4 = ${NestedParser.T4}",
      "T3 = ${NestedParser.T3}"
    ];

    expect(actualTokenIDToTypeMap, equals(expectedTokenIDToTypeMap));
    var parser = new NestedParser(null);
    var actual = parser.tokenNames.where((String n) => n.contains(new RegExp("'(.)+'")));
    expect(actual, equals([]));
  });
}
