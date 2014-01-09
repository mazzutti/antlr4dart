library unpredicated1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/unpredicated1_parser.dart";
part "../grammars/unpredicated1_lexer.dart";

main() {
  test("testUnpredicatedAltsAndOneOrthogonalAlt", () {
    var csource = new StringSource("34; x; y");
    var lexer = new Unpredicated1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Unpredicated1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=0 (a), input='x'",
      "reportAmbiguity d=0 (a): ambigAlts={2, 3}, input='x'",
      "reportAttemptingFullContext d=0 (a), input='y'",
      "reportAmbiguity d=0 (a): ambigAlts={2, 3}, input='y'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, equals(["alt 1", "alt 2", "alt 2"]));
  });
}
