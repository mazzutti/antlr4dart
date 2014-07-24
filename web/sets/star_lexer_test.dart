library star_lexer;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/star_lexer_parser.dart';
part '../grammars/star_lexer_lexer.dart';

main() {
  test("testStarLexerSingleElement", () {
    var csource = new StringSource("c");
    var lexer = new StarLexerLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new StarLexerParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["c"]));
  });
}
