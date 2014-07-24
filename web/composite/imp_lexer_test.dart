library imp_lexer;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/imp_lexer_parser.dart';
part '../grammars/imp_lexer_lexer.dart';

main() {
  test("testImportLexerWithOnlyFragmentRules", () {
    var csource = new StringSource("test test");
    var lexer = new ImpLexerLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ImpLexerParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.program();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
