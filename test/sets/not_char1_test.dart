library not_char1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/not_char1_parser.dart';
part '../grammars/not_char1_lexer.dart';

main() {
  test("testNotChar", () {
    var csource = new StringSource("x");
    var lexer = new NotChar1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new NotChar1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["x"]));
  });
}
