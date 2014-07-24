library parser2;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/parser2_lexer.dart";
part "../grammars/parser2_parser.dart";

main() {

  test("testValidParser2", () {
    var source = new StringSource("var foobar; gnarz(); var blupp; flupp ( ) ;");
    var lexer = new Parser2Lexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new Parser2Parser(tSource);
    var expected = [
      ["decl", "foobar"],
      ["call", "gnarz"],
      ["decl", "blupp"],
      ["call", "flupp"]
    ];
    parser.document();
    for(int i = 0; i < parser.events.length; i++) {
      expect(parser.events[i][0], equals(expected[i][0]));
      expect(parser.events[i][1], equals(expected[i][1]));
    }
  });

  test("testMalformedInput1Parser2", () {
    var source = new StringSource("var; foo();");
    var lexer = new Parser2Lexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new Parser2Parser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.document();
    var expected = [
      "extraneous input ';' expecting IDENTIFIER",
      "mismatched input '(' expecting ';'"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.events.length, equals(0));
  });

  test("testMalformedInput2Parser2", () {
    var source = new StringSource("var foobar(); gnarz();");
    var lexer = new Parser2Lexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new Parser2Parser(tSource);
    var expectedEvts = [["call", "gnarz"]];
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.document();
    var expectedMsgs = ["mismatched input '(' expecting ';'"];
    expect(errorListener.errorMessages, equals(expectedMsgs));
    for (int i = 0; i < expectedEvts.length; i++) {
      expect(parser.events[i][0], equals(expectedEvts[i][0]));
      expect(parser.events[i][1], equals(expectedEvts[i][1]));
    }
  });
}
