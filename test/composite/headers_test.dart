library headers;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/headers_parser.dart';
part '../grammars/headers_lexer.dart';

main() {
  test("testHeadersPropogatedCorrectlyToImportedGrammars", () {
    var csource = new StringSource("b");
    var lexer = new HeadersLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new HeadersParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["S.a"]));
  });
}
