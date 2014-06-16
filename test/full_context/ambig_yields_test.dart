library ambig_yields;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/ambig_yields_parser.dart';
part '../grammars/ambig_yields_lexer.dart';

main() {
  test("testAmbigYieldsCtxSensitiveDFA", () {
    var csource = new StringSource("abc");
    var lexer = new AmbigYieldsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AmbigYieldsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expectedMsgs = ["reportAttemptingFullContext d=0 (s), input='abc'"];
    expect(errorListener.errorMessages, equals(expectedMsgs));
  });
}
