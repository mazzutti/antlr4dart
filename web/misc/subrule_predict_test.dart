library subrule_predict;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/subrule_predict_lexer.dart";
part "../grammars/subrule_predict_parser.dart";

main() {

  test('testValidSubrulePredict', () {
    var source = new StringSource("BEGIN A END");
    var lexer = new SubrulePredictLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new SubrulePredictParser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
