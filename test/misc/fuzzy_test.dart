library fuzzy;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part "../grammars/fuzzy.dart";

main() {

  test("testValidFuzzy", () {
    var xinput =
      "import org.antlr.runtime.*;\n"
      "\n"
      "public class Main {\n"
      " public static void main(String[] args) throws Exception {\n"
      "     for (int i=0; i<args.length; i++) {\n"
      "   CharStream input = new ANTLRFileStream(args[i]);\n"
      "   FuzzyJava lex = new FuzzyJava(input);\n"
      "   TokenStream tokens = new CommonTokenStream(lex);\n"
      "   tokens.toString();\n"
      "   //System.out.println(tokens);\n"
      "     }\n"
      " }\n"
      "}\n"
    ;
    var xoutput = [
      "found method void main(String[] args) throws Exception {\n",
      "found var int i=\n",
      "found var CharStream input =\n",
      "found var FuzzyJava lex =\n",
      "found var TokenStream tokens =\n",
      "found call tokens.toString(\n",
      "found // comment //System.out.println(tokens);\n\n"
    ];
    var cstream = new StringSource(xinput);
    var lexer = new Fuzzy(cstream);
    var tstream = new CommonTokenSource(lexer);
    expect(tstream.numberOfOnChannelTokens, equals(44));
    expect(lexer.outbuf, equals(xoutput));
  });

}
