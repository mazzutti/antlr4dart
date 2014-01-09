library delegator8;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/delegator8_parser.dart';
part '../grammars/delegator8_lexer.dart';

main() {
  test("testDelegatorRuleOverridesDelegate", () {
    var csource = new StringSource("c");
    var lexer = new Delegator8Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Delegator8Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["S.a"]));
  });
}
