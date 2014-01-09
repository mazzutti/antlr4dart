library order;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/order_parser.dart";
part "../grammars/order_lexer.dart";

main() {
  test("testOrder", () {
    var source = new StringSource("x y");
    var lexer = new OrderLexer(source);
    CommonTokenSource tSource = new CommonTokenSource(lexer);
    var parser = new OrderParser(tSource);
    parser.s();
    expect(parser.log, equals(["alt 1", "alt 1"]));
  });
}
