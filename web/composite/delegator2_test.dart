library delegator2;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/delegator2_parser.dart';
part '../grammars/delegator2_lexer.dart';

main() {
  test("testDelegatorInvokesDelegateRuleWithArgs", () {
    var csource = new StringSource("b");
    var lexer = new Delegator2Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Delegator2Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["S.a", 1000]));
  });
}
