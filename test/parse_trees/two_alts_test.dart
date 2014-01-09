library two_alts;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/two_alts_parser.dart";
part "../grammars/two_alts_lexer.dart";

main() {
  test("test2Alts", () {
    var csource = new StringSource("y");
    var lexer = new TwoAltsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TwoAltsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, ["(a y)"]);
  });
}
