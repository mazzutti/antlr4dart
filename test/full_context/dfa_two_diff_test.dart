library dfa_two_diff;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/dfa_two_diff_parser.dart';
part '../grammars/dfa_two_diff_lexer.dart';

main() {
  test("testCtxSensitiveDFATwoDiffInput", () {
    var csource = new StringSource(r"$ 34 abc @ 34 abc");
    var lexer = new DFATwoDiffLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DFATwoDiffParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expectedMsgs = [
      "reportAttemptingFullContext d=2 (e), input='34abc'",
      "reportContextSensitivity d=2 (e), input='34'",
      "reportAttemptingFullContext d=2 (e), input='34abc'",
      "reportContextSensitivity d=2 (e), input='34abc'"
    ];
    expect(errorListener.errorMessages, equals(expectedMsgs));
    var expected = ["Decision 2:\ns0-INT->s1\ns1-ID->:s2^=>1\n"];
    expect(parser.log, equals(expected));
  });
}
