library sem_pred;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/sem_pred_parser.dart';
part '../grammars/sem_pred_lexer.dart';

main() {
  test("testSemPred", () {
    var csource = new StringSource("x y z");
    var lexer = new SemPredLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new SemPredParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (a (a (a x) y) z))"]));
  });
}
