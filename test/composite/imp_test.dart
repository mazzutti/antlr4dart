library imp;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/imp_parser.dart';
part '../grammars/imp_lexer.dart';

main() {
  test("testImportedGrammarWithEmptyOptions", () {
    var csource = new StringSource("b");
    var lexer = new ImpLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ImpParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
