library delegator7;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/delegator7_parser.dart';
part '../grammars/delegator7_lexer.dart';

main() {
  test("testDelegatesSeeSameTokenType2", () {
    var csource = new StringSource("aa");
    var lexer = new Delegator7Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Delegator7Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["S.x", "T.y"]));
    var expectedTokenIDToTypeMap = [
      "EOF = -1",
      "B = 1",
      "A = 2",
      "C = 3",
      "WS = 4"
    ];
    var actualTokenIDToTypeMap = [
      "EOF = ${Delegator7Parser.EOF}",
      "B = ${Delegator7Parser.B}",
      "A = ${Delegator7Parser.A}",
      "C = ${Delegator7Parser.C}",
      "WS = ${Delegator7Parser.WS}"
    ];
    expect(actualTokenIDToTypeMap, equals(expectedTokenIDToTypeMap));
    var expectedStringLiteralToTypeMap = ["'b'", "'a'", "'c'"];
    var actualStringLiteralToTypeMap = [
      parser.tokenNames[1],
      parser.tokenNames[2],
      parser.tokenNames[3],
    ];
    expect(actualStringLiteralToTypeMap, equals(expectedStringLiteralToTypeMap));
  });
}
