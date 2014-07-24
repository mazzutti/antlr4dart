library buffered_token_source_test;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/buffered_source_test.dart';

main() {
  test("testFirstAnd2ndToken", () {
    var input = new StringSource("x = 3 * 0 + 2 * 0;");
    var lexer = new BufferedSourceTest(input);
    var tokens = new BufferedTokenSource(lexer);
    expect(tokens.lookToken(1).text, equals("x"));
    expect(tokens.lookToken(2).text, equals(" "));
  });


  test("testCompleteBuffer", () {
    var input = new StringSource("x = 3 * 0 + 2 * 0;");
    var lexer = new BufferedSourceTest(input);
    var tokens = new BufferedTokenSource(lexer);
    int i = 1;
    var t = tokens.lookToken(i);
    while (t.type != Token.EOF) {
      i++;
      t = tokens.lookToken(i);
    }
    tokens.lookToken(i++); // push it past end
    tokens.lookToken(i++);
    expect(tokens.text, equals("x = 3 * 0 + 2 * 0;"));
  });

  test("testCompleteBufferAfterConsuming", () {
    var input = new StringSource("x = 3 * 0 + 2 * 0;");
    var lexer = new BufferedSourceTest(input);
    var tokens = new BufferedTokenSource(lexer);
    var t = tokens.lookToken(1);
    while (t.type != Token.EOF) {
      tokens.consume();
      t = tokens.lookToken(1);
    }
    expect(tokens.text, equals("x = 3 * 0 + 2 * 0;"));
  });

  test("testLookback", () {
    var input = new StringSource("x = 3 * 0 + 2 * 0;");
    var lexer = new BufferedSourceTest(input);
    var tokens = new BufferedTokenSource(lexer);
    tokens.consume(); // get x into buffer
    expect(tokens.lookToken(-1).text, equals("x"));
    tokens.consume();
    tokens.consume(); // consume '='
    expect(tokens.lookToken(-3).text, equals("x"));
    expect(tokens.lookToken(-2).text, equals(" "));
    expect(tokens.lookToken(-1).text, equals("="));
  });
}
