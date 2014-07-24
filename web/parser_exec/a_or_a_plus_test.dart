library a_or_a_plus;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/a_or_a_plus_parser.dart";
part "../grammars/a_or_a_plus_lexer.dart";

main() {
  test("testAorAPlus", () {
    var csource = new StringSource("a b c");
    var lexer = new AOrAPlusLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AOrAPlusParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["abc"]));
  });
}
