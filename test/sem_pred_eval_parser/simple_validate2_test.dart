library simple_validate2;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/simple_validate2_parser.dart";
part "../grammars/simple_validate2_lexer.dart";

main() {
  test("testSimpleValidate2", () {
    var csource = new StringSource("3 4 x");
    var lexer = new SimpleValidate2Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new SimpleValidate2Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["no viable alternative at input 'x'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["alt 2", "alt 2"]));
  });
}
