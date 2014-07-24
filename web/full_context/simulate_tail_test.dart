library simulate_tail;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/simulate_tail_parser.dart';
part '../grammars/simulate_tail_lexer.dart';

main() {
  test("testLoopsSimulateTailRecursion", () {
    var csource = new StringSource("a(i)<-x");
    var lexer = new SimulateTailLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new SimulateTailParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.prog();
    var expectedMsgs = [
      "reportAttemptingFullContext d=3 (expr_primary), input='a(i)'",
      "reportAmbiguity d=3 (expr_primary): ambigAlts={2, 3}, input='a(i)<-x'"
    ];
    expect(errorListener.errorMessages, equals(expectedMsgs));
    var expected = ["pass: a(i)<-x"];
    expect(parser.log, equals(expected));
  });
}
