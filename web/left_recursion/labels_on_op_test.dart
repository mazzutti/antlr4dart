library labels_on_op;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/labels_on_op_parser.dart';
part '../grammars/labels_on_op_lexer.dart';

main() {
  test("testLabelsOnOpSubrule1", () {
    var csource = new StringSource("4");
    var lexer = new LabelsOnOpLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new LabelsOnOpParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e 4))"]));
  });

  test("testLabelsOnOpSubrule2", () {
    var csource = new StringSource("1*2/3");
    var lexer = new LabelsOnOpLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new LabelsOnOpParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e (e (e 1) * (e 2)) / (e 3)))"]));
  });

  test("testLabelsOnOpSubrule3", () {
    var csource = new StringSource("(1/2)*3");
    var lexer = new LabelsOnOpLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new LabelsOnOpParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (e (e ( (e (e 1) / (e 2)) )) * (e 3)))"]));
  });
}
