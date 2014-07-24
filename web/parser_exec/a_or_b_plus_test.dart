library a_or_b_plus;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/a_or_b_plus_parser.dart";
part "../grammars/a_or_b_plus_lexer.dart";

main() {
  test("testAorBPlus", () {
    var csource = new StringSource("a 34 c");
    var lexer = new AOrBPlusLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AOrBPlusParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["a34c"]));
  });
}
