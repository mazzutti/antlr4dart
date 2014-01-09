library delegator6;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/delegator6_parser.dart';
part '../grammars/delegator6_lexer.dart';

main() {
  test("testDelegatesSeeSameTokenType", () {
    var csource = new StringSource("aa");
    var lexer = new Delegator6Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Delegator6Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["S.x", "T.y"]));
  });
}
