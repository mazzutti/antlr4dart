library not_char3;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/not_char3_parser.dart';
part '../grammars/not_char3_lexer.dart';

main() {
  test("testNotCharSetWithLabel", () {
    var csource = new StringSource("x");
    var lexer = new NotChar3Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new NotChar3Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["x"]));
  });
}
