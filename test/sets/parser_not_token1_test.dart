library parser_not_token1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/parser_not_token1_parser.dart';
part '../grammars/parser_not_token1_lexer.dart';

main() {
  test("testParserNotToken", () {
    var csource = new StringSource("zz");
    var lexer = new ParserNotToken1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ParserNotToken1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["zz"]));
  });
}
