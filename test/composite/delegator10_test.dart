library delegator10;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/delegator10_parser.dart';
part '../grammars/delegator10_lexer.dart';

main() {
  test("testDelegatorRuleOverridesDelegates", () {
    var csource = new StringSource("c");
    var lexer = new Delegator10Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Delegator10Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["M.b", "S.a"]));
  });
}
