library optional_set;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/optional_set_parser.dart';
part '../grammars/optional_set_lexer.dart';

main() {
  test("testOptionalSet", () {
    var csource = new StringSource("ac");
    var lexer = new OptionalSetLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new OptionalSetParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["ac"]));
  });
}
