library labeled_alternatives;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/labeled_alternatives_parser.dart";
part "../grammars/labeled_alternatives_lexer.dart";

main() {
  test("testLabelAliasingAcrossLabeledAlternatives", () {
    var csource = new StringSource("xy");
    var lexer = new LabeledAlternativesLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new LabeledAlternativesParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.start();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["x", "y"]));
  });
}
