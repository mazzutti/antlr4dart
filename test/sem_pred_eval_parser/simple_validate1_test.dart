library simple_validate1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/simple_validate1_parser.dart";
part "../grammars/simple_validate1_lexer.dart";

main() {
  test("testSimpleValidate1", () {
    var csource = new StringSource("x");
    var lexer = new SimpleValidate1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new SimpleValidate1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["no viable alternative at input 'x'"];
    expect(errorListener.errorMessages, equals(expected));
  });
}
