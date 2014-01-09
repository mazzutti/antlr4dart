library not_char2;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/not_char2_parser.dart';
part '../grammars/not_char2_lexer.dart';

main() {
  test("testNotCharSet", () {
    var csource = new StringSource("x");
    var lexer = new NotChar2Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new NotChar2Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["x"]));
  });
}
