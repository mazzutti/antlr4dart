library level;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/level_parser.dart';

main() {
  test("testLevelImport", () {
    var expectedTokenIDToTypeMap = [
      "EOF = -1",
      "M = 1",
    ];
    var actualTokenIDToTypeMap = [
      "EOF = ${LevelParser.EOF}",
      "M = ${LevelParser.M}",
    ];
    expect(actualTokenIDToTypeMap, equals(expectedTokenIDToTypeMap));
    var parser = new LevelParser(null);
    var actual = parser.tokenNames.where((String n) => n.contains(new RegExp("'(.)+'")));
    expect(actual, equals([]));
  });
}
