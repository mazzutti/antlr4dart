library bug;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/bug.dart";


main() {
  test('testValidBug', () {
    var source = new StringSource("defined");
    var lexer = new Bug(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    var token;
    while (true) {
      token = lexer.nextToken();
      if (token.type == Token.EOF)
          break;
    }
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
