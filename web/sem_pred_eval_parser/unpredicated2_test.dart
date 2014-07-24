library unpredicated2;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/unpredicated2_parser.dart";
part "../grammars/unpredicated2_lexer.dart";

main() {
  test("testUnpredicatedAlts", () {
    var csource = new StringSource("x; y");
    var lexer = new Unpredicated2Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Unpredicated2Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=0 (a), input='x'",
      "reportAmbiguity d=0 (a): ambigAlts={1, 2}, input='x'",
      "reportAttemptingFullContext d=0 (a), input='y'",
      "reportAmbiguity d=0 (a): ambigAlts={1, 2}, input='y'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["alt 1", "alt 1"]));
  });
}
