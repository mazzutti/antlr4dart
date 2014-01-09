library simple;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/simple_parser.dart";
part "../grammars/simple_lexer.dart";

main() {
  test("testSimple", () {
    var csource = new StringSource("x y 3");
    var lexer = new SimpleLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new SimpleParser(tsource);
    parser.s();
    expect(parser.log, equals(["alt 2", "alt 2", "alt 3"]));
  });
}
