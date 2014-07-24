library delegator11;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/delegator11.dart';

main() {
  test("testLexerDelegatorInvokesDelegateRule", () {
    var csource = new StringSource("abc");
    var lexer = new Delegator11(csource);
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
      "S.A",
      "[@0,0:0='a',<3>,1:0]",
      "[@1,1:1='b',<1>,1:1]",
      "[@2,2:2='c',<4>,1:2]",
      "[@3,3:2='<EOF>',<-1>,1:3]"
    ];
    expect(lexer.log, equals(expected));
  });
}
