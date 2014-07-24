library special_states;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/special_states_lexer.dart";
part "../grammars/special_states_parser.dart";

main() {

  test("testValid1SpecialStates", () {
    var source = new StringSource("foo");
    var lexer = new SpecialStatesLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new SpecialStatesParser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.r();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testValid2SpecialStates", () {
    var source = new StringSource("foo name1");
    var lexer = new SpecialStatesLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new SpecialStatesParser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.r();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testValid3SpecialStates", () {
    var source = new StringSource("bar name1");
    var lexer = new SpecialStatesLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new SpecialStatesParser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.cond = false;
    parser.r();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testValid4SpecialStates", () {
    var source = new StringSource("bar name1 name2");
    var lexer = new SpecialStatesLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new SpecialStatesParser(tSource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.cond = false;
    parser.r();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
