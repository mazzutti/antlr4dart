library delegator1;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/delegator1_parser.dart';
part '../grammars/delegator1_lexer.dart';

main() {
  test("testDelegatorInvokesDelegateRule", () {
    var csource = new StringSource("b");
    var lexer = new Delegator1Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Delegator1Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["S.a"]));
  });
}
