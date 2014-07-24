library parser3;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/parser3_lexer.dart";
part "../grammars/parser3_parser.dart";

main() {

  test("testValidParser3", () {
    var source = new StringSource("int foo;");
    var lexer = new Parser3Lexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new Parser3Parser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.program();
    expect(errorListener.errorMessages.length, equals(0));
  });

  test("testMalformedInput1Parser3", () {
    var source = new StringSource("int foo() { 1+2 }");
    var lexer = new Parser3Lexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new Parser3Parser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.program();
    var expected = ["extraneous input '}' expecting {'+', '<', ';', '=='}"];
    expect(errorListener.errorMessages, equals(expected));
  });

  test("testMalformedInput2Parser3", () {
    var source = new StringSource("int foo() { 1+; 1+2 }");
    var lexer = new Parser3Lexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new Parser3Parser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.program();
    var expected = [
       "no viable alternative at input ';'",
       "extraneous input '}' expecting {'+', '<', ';', '=='}"];
    expect(errorListener.errorMessages, equals(expected));
  });
}
