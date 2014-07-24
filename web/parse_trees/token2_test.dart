library token2;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/token2_parser.dart";
part "../grammars/token2_lexer.dart";

main() {
  test("testToken2", () {
    var csource = new StringSource("xy");
    var lexer = new Token2Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Token2Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, ["(a x y)"]);
  });
}
