library bring;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/bring_parser.dart';
part '../grammars/bring_lexer.dart';

main() {
  test("testBringInLiteralsFromDelegate", () {
    var csource = new StringSource("=a");
    var lexer = new BringLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new BringParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["S.a"]));
  });
}
