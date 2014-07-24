library not_char4;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/not_char4_parser.dart';
part '../grammars/not_char4_lexer.dart';

main() {
  test("testNotCharSetWithRuleRef", () {
    var csource = new StringSource("x");
    var lexer = new NotChar4Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new NotChar4Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["x"]));
  });
}
