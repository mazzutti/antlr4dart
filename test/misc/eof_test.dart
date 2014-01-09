library eof;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/eof.dart";


main() {

  test("testValidEof", () {
    var source = new StringSource(" \u0000");
    var lexer = new Eof(source);
    var token = lexer.nextToken();
    expect(token.type, equals(Eof.SPACE));
    token = lexer.nextToken();
    expect(token.type, equals(Eof.END));
    token = lexer.nextToken();
    expect(token.type, equals(Recognizer.EOF));
  });
}
