library a_or_a_star;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/a_or_a_star_parser.dart";
part "../grammars/a_or_a_star_lexer.dart";

main() {
  test("testAorAStar", () {
    var csource = new StringSource("a b c");
    var lexer = new AOrAStarLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AOrAStarParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["abc"]));
  });
}
