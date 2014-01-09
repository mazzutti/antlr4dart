library disabled_alternative;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/disabled_alternative_parser.dart";
part "../grammars/disabled_alternative_lexer.dart";

main() {
  test("testDisabledAlternative", () {
    var csource = new StringSource("hello");
    var lexer = new DisabledAlternativeLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DisabledAlternativeParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.cppCompilationUnit();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
