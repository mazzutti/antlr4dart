library sensitive_dfa;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/sensitive_dfa_parser.dart';
part '../grammars/sensitive_dfa_lexer.dart';

main() {
  test("testCtxSensitiveDFA1", () {
    var csource = new StringSource(r"$ 34 abc");
    var lexer = new SensitiveDFALexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new SensitiveDFAParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expectedMsgs = [
      "reportAttemptingFullContext d=1 (e), input='34abc'",
      "reportContextSensitivity d=1 (e), input='34'"];
    expect(errorListener.errorMessages, equals(expectedMsgs));
  });

  test("testCtxSensitiveDFA2", () {
    var csource = new StringSource("@ 34 abc");
    var lexer = new SensitiveDFALexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new SensitiveDFAParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expectedMsgs = [
      "reportAttemptingFullContext d=1 (e), input='34abc'",
      "reportContextSensitivity d=1 (e), input='34abc'"];
    expect(errorListener.errorMessages, equals(expectedMsgs));
  });
}
