library parser_not_set;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/parser_not_set_parser.dart';
part '../grammars/parser_not_set_lexer.dart';

main() {
  test("testParserNotSet", () {
    var csource = new StringSource("zz");
    var lexer = new ParserNotSetLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ParserNotSetParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["z"]));
  });
}
