library no_viable_alt;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/no_viable_alt_parser.dart";
part "../grammars/no_viable_alt_lexer.dart";

main() {
  test("testNoViableAlt", () {
    var csource = new StringSource("z");
    var lexer = new NoViableAltLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new NoViableAltParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["mismatched input 'z' expecting {'x', 'y'}"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, ["(a z)"]);
  });
}
