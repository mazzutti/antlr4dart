library to_left2;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/to_left2_parser.dart";
part "../grammars/to_left2_lexer.dart";

main() {
  test("testToLeftWithVaryingPredicate", () {
    var csource = new StringSource("x x y");
    var lexer = new ToLeft2Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ToLeft2Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["i=1", "alt 2", "i=2", "alt 1", "i=3", "alt 2"]));
  });
}
