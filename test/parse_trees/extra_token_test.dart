library extra_token;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/extra_token_parser.dart";
part "../grammars/extra_token_lexer.dart";

main() {
  test("testExtraToken", () {
    var csource = new StringSource("xzy");
    var lexer = new ExtraTokenLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ExtraTokenParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["extraneous input 'z' expecting 'y'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, ["(a x z y)"]);
  });
}
