library whitespace_influence;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/whitespace_influence_parser.dart';
part '../grammars/whitespace_influence_lexer.dart';

main() {
  test("testWhitespaceInfluence1", () {
    var csource = new StringSource("Test(1,3)");
    var lexer = new WhitespaceInfluenceLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new WhitespaceInfluenceParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    expect(parser.prog().toString(), equals("[]"));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testWhitespaceInfluence2", () {
    var csource = new StringSource("Test(1,3)");
    var lexer = new WhitespaceInfluenceLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new WhitespaceInfluenceParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    expect(parser.prog().toString(), equals("[]"));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
