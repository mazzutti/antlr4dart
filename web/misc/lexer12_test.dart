library lexer12;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer12.dart";

main() {

  test("testValid12", () {
    String xinput =
      "import org.antlr.runtime.*;\n"
      "\n"
      "public class Main {\n"
      "\n"
      " class test{}"
      " public static void main(String[] args) throws Exception {\n"
      "   for (int i=0; i<args.length; i++) {\n"
      "     CharStream input = new ANTLRFileStream(args[i]);\n"
      "     FuzzyJava lex = new FuzzyJava(input);\n"
      "     TokenStream tokens = new CommonTokenStream(lex);\n"
      "     tokens.toString();\n"
      "     //System.out.println(tokens);\n"
      "   }\n"
      " }\n"
      "}\n"
    ;

    var source = new StringSource(xinput);
    var lexer = new Lexer12(source);
    var tSource = new CommonTokenSource(lexer);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    expect(tSource.numberOfOnChannelTokens, equals(41));
  });
}
