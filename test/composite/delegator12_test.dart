library delegator12;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/delegator12.dart';

main() {
  test("testLexerDelegatorRuleOverridesDelegate", () {
    var csource = new StringSource("ab");
    var lexer = new Delegator12(csource);
    var tsource = new CommonTokenSource(lexer);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    tsource.fill();
    List found = new List();
    tsource.tokens.forEach((t) {
      found.add(t.toString());
    });
    expect(errorListener.errorMessages.isEmpty, isTrue);
    lexer.log.addAll(found);
    var expected = [
      "M.a",
      "[@0,0:1='ab',<1>,1:0]",
      "[@1,2:1='<EOF>',<-1>,1:2]",
    ];
    expect(lexer.log, equals(expected));
  });
}
