library delegator4;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/delegator4_parser.dart';
part '../grammars/delegator4_lexer.dart';

main() {
  test("testDelegatorAccessesDelegateMembers", () {
    var csource = new StringSource("b");
    var lexer = new Delegator4Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Delegator4Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["foo"]));
  });
}
