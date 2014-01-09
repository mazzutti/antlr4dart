library actions;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/actions_lexer.dart";
part "../grammars/actions_parser.dart";

main() {

  test("testValidActions", () {
    var source = new StringSource("int foo;");
    var lexer = new ActionsLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new ActionsParser(tSource);
    var result = parser.declaration().name;
    expect("foo", equals(result));
  });

}
