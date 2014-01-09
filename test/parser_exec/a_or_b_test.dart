library a_or_b;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/a_or_b_parser.dart";
part "../grammars/a_or_b_lexer.dart";

main() {
  test("testAorB", () {
    var csource = new StringSource("34");
    var lexer = new AOrBLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AOrBParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["alt 2"]));
  });
}
