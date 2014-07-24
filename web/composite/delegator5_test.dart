library delegator5;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/delegator5_parser.dart';
part '../grammars/delegator5_lexer.dart';

main() {
  test("testDelegatorInvokesFirstVersionOfDelegateRule", () {
    var csource = new StringSource("b");
    var lexer = new Delegator5Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Delegator5Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["S.a"]));
  });
}
