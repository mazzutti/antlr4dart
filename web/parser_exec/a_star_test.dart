library a_star;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/a_star_parser.dart";
part "../grammars/a_star_lexer.dart";

main() {
  test("testAStar", () {
    var csource = new StringSource("a b c");
    var lexer = new AStarLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AStarParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["abc"]));
  });
}
