library to_left1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/to_left1_parser.dart";
part "../grammars/to_left1_lexer.dart";

main() {
  test("testToLeft", () {
    var csource = new StringSource("x x y");
    var lexer = new ToLeft1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ToLeft1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["alt 2", "alt 2", "alt 2"]));
  });
}
