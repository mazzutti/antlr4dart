library validate_in_dfa;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/validate_in_dfa_parser.dart";
part "../grammars/validate_in_dfa_lexer.dart";

main() {
  test("testValidateInDFA", () {
    var csource = new StringSource("x ; y");
    var lexer = new ValidateInDFALexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ValidateInDFAParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "no viable alternative at input 'x'",
      "no viable alternative at input 'y'"];
    expect(errorListener.errorMessages, equals(expected));
  });
}
