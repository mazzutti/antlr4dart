library hoist;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/hoist_lexer.dart";
part "../grammars/hoist_parser.dart";

main() {

  test("testValid1Hoist", () {
    var source = new StringSource("enum");
    var lexer = new HoistLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new HoistParser(tSource);
    parser.enableEnum = true;
    var enumIs = parser.stat().enumIs;
    expect(enumIs, equals("keyword"));
  });

  test("testValid2Hoist", () {
    var source = new StringSource("enum");
    var lexer = new HoistLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new HoistParser(tSource);
    parser.enableEnum = false;
    var enumIs = parser.stat().enumIs;
    expect(enumIs, equals("ID"));
  });
}
