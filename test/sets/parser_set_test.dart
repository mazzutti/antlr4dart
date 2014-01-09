library parser_set;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/parser_set_parser.dart';
part '../grammars/parser_set_lexer.dart';

main() {
  test("testParserSet", () {
    var csource = new StringSource("x");
    var lexer = new ParserSetLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ParserSetParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["x"]));
  });
}
