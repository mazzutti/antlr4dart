library parser_not_token2;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/parser_not_token2_parser.dart';
part '../grammars/parser_not_token2_lexer.dart';

main() {
  test("testParserNotTokenWithLabel", () {
    var csource = new StringSource("zz");
    var lexer = new ParserNotToken2Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ParserNotToken2Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["z"]));
  });
}
