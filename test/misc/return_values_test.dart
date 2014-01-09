library return_values;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/return_values_lexer.dart";
part "../grammars/return_values_parser.dart";

main() {
  test('testValidReturnValues', () {
    var source = new StringSource("   a a a a  ");
    var lexer = new ReturnValuesLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new ReturnValuesParser(tSource);
    var ret = parser.a();
    expect(ret.foo, equals("foo"));
    expect(ret.bar, equals("bar"));
  });
}
