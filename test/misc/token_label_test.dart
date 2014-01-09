library token_label;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/token_label_lexer.dart";
part "../grammars/token_label_parser.dart";

main() {
  test('testValidTokenLabel', () {
    var source = new StringSource("   a");
    var lexer = new TokenLabelLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new TokenLabelParser(tSource);
    parser.a();
    expect(parser.xlog, equals(["a",1,1,3,0,1]));
  });
}
