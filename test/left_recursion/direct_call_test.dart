library direct_call;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/direct_call_parser.dart';
part '../grammars/direct_call_lexer.dart';

main() {
  test("testDirectCallToLeftRecursiveRule1", () {
    var csource = new StringSource("x");
    var lexer = new DirectCallLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DirectCallParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(a x)"]));
  });

  test("testDirectCallToLeftRecursiveRule2", () {
    var csource = new StringSource("x y");
    var lexer = new DirectCallLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DirectCallParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(a (a x) y)"]));
  });

  test("testDirectCallToLeftRecursiveRule3", () {
    var csource = new StringSource("x y z");
    var lexer = new DirectCallLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new DirectCallParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["(a (a (a x) y) z)"]));
  });
}
