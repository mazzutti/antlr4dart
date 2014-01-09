library char_set_literal;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/char_set_literal_parser.dart';
part '../grammars/char_set_literal_lexer.dart';

main() {
  test("testCharSetLiteral", () {
    var csource = new StringSource("A a B b");
    var lexer = new CharSetLiteralLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new CharSetLiteralParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["A", "a", "B", "b"]));
  });
}
