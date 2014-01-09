library simple_left_recursion;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/simple_left_recursion_parser.dart';
part '../grammars/simple_left_recursion_lexer.dart';

main() {
  test("testSimpleLeftRecursion1", () {
    var csource = new StringSource("x");
    var lexer = new SimpleLeftRecursionLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new SimpleLeftRecursionParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (a x))"]));
  });

  test("testSimpleLeftRecursion2", () {
    var csource = new StringSource("x y");
    var lexer = new SimpleLeftRecursionLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new SimpleLeftRecursionParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (a (a x) y))"]));
  });

  test("testSimpleLeftRecursion3", () {
    var csource = new StringSource("x y z");
    var lexer = new SimpleLeftRecursionLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new SimpleLeftRecursionParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(s (a (a (a x) y) z))"]));
  });
}
