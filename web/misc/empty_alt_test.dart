library empty_alt;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/empty_alt_lexer.dart";
part "../grammars/empty_alt_parser.dart";

main() {

  test("testValid1EmptyAlt", () {
    var source = new StringSource("foo");
    var lexer = new EmptyAltLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new EmptyAltParser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.cond = false;
    parser.r();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testValid2EmptyAlt", () {
    var source = new StringSource("foo  jfef9jfe88d");
    var lexer = new EmptyAltLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new EmptyAltParser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.cond = true;
    parser.r();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testValid3EmptyAlt", () {
    var source = new StringSource("foo bar");
    var lexer = new EmptyAltLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new EmptyAltParser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    var expected = ["no viable alternative at input ' '"];
    parser.cond = false;
    parser.r();
    expect(errorListener.errorMessages, equals(expected));
  });
}

