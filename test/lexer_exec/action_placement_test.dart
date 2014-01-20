library action_placement;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/action_placement.dart';

main() {
  test("testActionPlacement", () {
    var source = new StringSource("ab");
    var lexer = new ActionPlacement(source);
    var errorListener = new TestErrorListener();
    CommonTokenSource tokens = new CommonTokenSource(lexer);
    tokens.fill();
    var expected = [
      "stuff0: ",
      "stuff1: a",
      "stuff2: ab",
      "ab"];
    expect(lexer.log, equals(expected));
    expect(tokens.tokens.toString(), equals(
      "[[@0,0:1='ab',<1>,1:0], [@1,2:1='<EOF>',<-1>,1:2]]"));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}