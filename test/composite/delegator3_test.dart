library delegator3;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/delegator3_parser.dart';
part '../grammars/delegator3_lexer.dart';

main() {
  test("testDelegatorInvokesDelegateRuleWithReturnStruct", () {
    var csource = new StringSource("b");
    var lexer = new Delegator3Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Delegator3Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["S.a", "b"]));
  });
}
