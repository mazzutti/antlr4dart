library atom;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/atom_parser.dart';
part '../grammars/atom_lexer.dart';

main() {
  test("testAtomWithClosureInTranslatedLRRule", () {
    var csource = new StringSource("a+b+a");
    var lexer = new AtomLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AtomParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.start();
    var expected = [
      "reportAttemptingFullContext d=2 (e), input='+'",
      "reportContextSensitivity d=2 (e), input='+'",
      "reportAttemptingFullContext d=2 (e), input='+'",
      "reportContextSensitivity d=2 (e), input='+'"];
    expect(errorListener.errorMessages, equals(expected));
  });
}
