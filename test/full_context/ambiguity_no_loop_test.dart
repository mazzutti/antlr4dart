library ambiguity_no_loop;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/ambiguity_no_loop_parser.dart';
part '../grammars/ambiguity_no_loop_lexer.dart';

main() {
  test("testAmbiguityNoLoop", () {
    var csource = new StringSource("a@");
    var lexer = new AmbiguityNoLoopLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AmbiguityNoLoopParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.prog();
    var expectedMsgs = [
      "reportAttemptingFullContext d=0 (prog), input='a@'",
      "reportAmbiguity d=0 (prog): ambigAlts={1, 2}, input='a@'",
      "reportAttemptingFullContext d=1 (expr), input='a@'",
      "reportContextSensitivity d=1 (expr), input='a@'"
    ];
    expect(errorListener.errorMessages, equals(expectedMsgs));
    var expected = ["alt 1"];
    expect(parser.log, equals(expected));
  });
}
