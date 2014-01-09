library labels;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/labels_parser.dart";
part "../grammars/labels_lexer.dart";

main() {
  test("testLabels", () {
    var csource = new StringSource("abc 34;");
    var lexer = new LabelsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new LabelsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
