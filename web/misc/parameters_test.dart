library parameters;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/parameters_lexer.dart";
part "../grammars/parameters_parser.dart";

main() {
  test('testValidParameters', () {
    var source = new StringSource('a a a');
    var lexer = new ParametersLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new ParametersParser(tSource);
    var ret = parser.a("foo", "bar").l;
    expect(ret, equals(["foo", "bar"]));
  });
}
