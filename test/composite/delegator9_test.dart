library delegator9;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/delegator9_parser.dart';
part '../grammars/delegator9_lexer.dart';

main() {
  test("testDelegatorRuleOverridesLookaheadInDelegate", () {
    var csource = new StringSource("float x = 3;");
    var lexer = new Delegator9Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Delegator9Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.prog();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["DelegatorImport9: floatx=3;"]));
  });
}
