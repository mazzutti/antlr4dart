library llstar;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/ll_star_lexer.dart";
part "../grammars/ll_star_parser.dart";

main() {

  test("testValidLLStar", () {
    var xinput =
      "char c;\n"
      "int x;\n"
      "\n"
      "void bar(int x);\n"
      "\n"
      "int foo(int y, char d) {\n"
      "  int i;\n"
      "  for (i=0; i<3; i=i+1) {\n"
      "    x=3;\n"
      "    y=5;\n"
      "  }\n"
      "}\n"
    ;
    var xoutput  = const [
      "bar is a declaration",
      "foo is a definition"
    ];

    var source = new StringSource(xinput);
    var lexer = new LLStarLexer(source);
    var tSource = new CommonTokenSource(lexer);
    var parser = new LLStarParser(tSource);
    parser.program();
    expect(parser.olog, equals(xoutput));
  });

}
