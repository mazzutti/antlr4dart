library finally_block;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/finally_lexer.dart";
part "../grammars/finally_parser.dart";

main() {

  test("testFinally", () {
    var source = new StringSource("foobar");
    var lexer = new FinallyLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new FinallyParser(tSource);
    parser.prog();
    expect(parser.events, equals(["catch", "finally"]));
  });

}
