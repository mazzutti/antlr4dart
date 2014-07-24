library lexer_optional_set;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/lexer_optional_set_parser.dart';
part '../grammars/lexer_optional_set_lexer.dart';

main() {
  test("testLexerOptionalSet", () {
    var csource = new StringSource("ac");
    var lexer = new LexerOptionalSetLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new LexerOptionalSetParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["ac"]));
  });
}
