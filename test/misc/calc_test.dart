library calc;

import "dart:math";
import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/calc_lexer.dart";
part "../grammars/calc_parser.dart";

main() {

  void _evaluate(String expr, num expected, [List errors = const []]) {
    var source = new StringSource(expr);
    var lexer = new CalcLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new CalcParser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    var result = parser.evaluate().result;
    expect(result, equals(expected));
    if(errors.length > 0) {
      expect(errorListener.errorMessages, equals(errors));
    }
  }

  test("testEvaluateCalc", ()  {
    _evaluate("1 + 2", 3);
    _evaluate("1 + 2 * 3", 7);
    _evaluate("10 / 2", 5);
    _evaluate("6 + 2*(3+1) - 4", 10);
    _evaluate("6 - (2*1", 4, ["missing ')' at '<EOF>'"]);
  });
}
