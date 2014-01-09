library optional1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/optional1_parser.dart';
part '../grammars/optional1_lexer.dart';

main() {
  test("testOptionalSingleElement", () {
    var csource = new StringSource("bc");
    var lexer = new Optional1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Optional1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["bc"]));
  });
}
