library parser_interpreter_test;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/a_or_b_parser1.dart';
part '../grammars/a_or_b_lexer1.dart';
part '../grammars/call_parser.dart';
part '../grammars/a_lexer.dart';
part '../grammars/a_parser.dart';

main() {
  test('testA', () {
    LexerBuilder lexerBuilder = (source) => new ALexer(source);
    ParserBuilder parserBuilder = (source) => new AParser(source);
    String result = _execInterp(lexerBuilder, parserBuilder, "sa", "a");
    expect(result, equals("(sa a)"));
  });

  test('testAorB', () {
    LexerBuilder lexerBuilder = (source) => new AOrBLexer1(source);
    ParserBuilder parserBuilder = (source) => new AOrBParser1(source);
    String result = _execInterp(lexerBuilder, parserBuilder, "s", "a");
    expect(result, equals("(s a)"));
    result = _execInterp(lexerBuilder, parserBuilder, "s", "b");
    expect(result, equals("(s b)"));
  });

  // TODO
//  test('testCall', () {
//        try {
//    LexerBuilder lexerBuilder = (source) => new AOrBLexer1(source);
//    ParserBuilder parserBuilder = (source) => new CallParser(source);
//    String result = _execInterp(lexerBuilder, parserBuilder, "call", "ac");
//    expect(result, equals("(s (t a) c)"));
//    result = _execInterp(lexerBuilder, parserBuilder, "call", "bc");
//    expect(result, equals("(s (t b) c)"));
//        } catch(e, st) {
//          print(e);
//          print(st);
//        }
//  });

}

typedef Lexer LexerBuilder(StringSource source);
typedef Parser ParserBuilder(CommonTokenSource source);

String _execInterp(LexerBuilder lexerBuilder, ParserBuilder
    parserBuilder, String startRule, String input) {
  StringSource source = new StringSource(input);
  Lexer lexer = lexerBuilder(source);
  LexerInterpreter lexInterp = new LexerInterpreter(lexer.grammarFileName,
      lexer.tokenNames, lexer.ruleNames, lexer.modeNames, lexer.atn, source);
  CommonTokenSource tokens = new CommonTokenSource(lexInterp);
  Parser parser = parserBuilder(tokens);
  ParserInterpreter parserInterp = new ParserInterpreter(parser.grammarFileName,
      parser.tokenNames, parser.ruleNames, parser.atn, tokens);
  RuleContext t = parserInterp.parse(parser.ruleIndexMap[startRule]);
  return t.toString(parser);
}
