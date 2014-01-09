library rewind_before;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/rewind_before_parser.dart';
part '../grammars/rewind_before_lexer.dart';

main() {
  test("testRewindBeforePredEval", () {
    var csource = new StringSource("y 3 x 4");
    var lexer = new RewindBeforeLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new RewindBeforeParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = [
      "reportAttemptingFullContext d=0 (a), input='x'",
      "reportAmbiguity d=0 (a): ambigAlts={1, 2}, input='x'",
      "reportAttemptingFullContext d=0 (a), input='y'",
      "reportAmbiguity d=0 (a): ambigAlts={1, 2}, input='y'"];
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["alt 2", "alt 1"]));
  });
}
