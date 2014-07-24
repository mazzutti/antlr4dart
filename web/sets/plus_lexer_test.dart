library plus_lexer;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/plus_lexer_parser.dart';
part '../grammars/plus_lexer_lexer.dart';

main() {
  test("testPlusLexerSingleElement", () {
    var csource = new StringSource("bbbbc");
    var lexer = new PlusLexerLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new PlusLexerParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["bbbbc"]));
  });
}
