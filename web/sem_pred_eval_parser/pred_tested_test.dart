library pred_tested;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/pred_tested_parser.dart";
part "../grammars/pred_tested_lexer.dart";

main() {
  test("testPredTestedEvenWhenUnAmbig1", () {
    var csource = new StringSource("abc");
    var lexer = new PredTestedLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new PredTestedParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.primary();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, ["ID abc"]);
  });
  test("testPredTestedEvenWhenUnAmbig2", () {
    var csource = new StringSource("enum");
    var lexer = new PredTestedLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new PredTestedParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    var expected = ["no viable alternative at input 'enum'"];
    parser.primary();
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log.isEmpty, isTrue);
  });
}
