library atn_lexer_interpreter_test;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";

part '../grammars/lexer_two_rules.dart';
part '../grammars/short_long_rule1.dart';
part '../grammars/short_long_rule2.dart';
part '../grammars/wild_on_end1.dart';
part '../grammars/wild_on_end2.dart';
part '../grammars/wildcard_non_quirk.dart';
part '../grammars/lexer_loops.dart';
part '../grammars/lexer_not_set.dart';
part '../grammars/lexer_keyword.dart';
part '../grammars/lexer_rule_ref.dart';
part '../grammars/recursive_lexer1.dart';
part '../grammars/recursive_lexer2.dart';
part '../grammars/wildcard_greedy_loop.dart';
part '../grammars/wildcard_greedy.dart';
part '../grammars/wildcard_explicit.dart';
part '../grammars/wildcard_loop.dart';
part '../grammars/lexer_escape.dart';
part '../grammars/greedy_optional.dart';
part '../grammars/greedy_between.dart';
part '../grammars/non_greedy_between.dart';
part '../grammars/eof_at_end1.dart';
part '../grammars/eof_at_end2.dart';
part '../grammars/eof_in_set.dart';
part '../grammars/eof_suffix1.dart';
part '../grammars/eof_suffix2.dart';
part '../grammars/eof_by_itself.dart';

main() {
  test("testLexerTwoRules", () {
    LexerBuilder lexerBuilder = (source) => new LexerTwoRules(source);
    expect(_checkLexerMatches(lexerBuilder, "abab"), equals("A, B, A, B, EOF"));
  });

  test("testShortLongRule1", () {
    LexerBuilder lexerBuilder = (source) => new ShortLongRule1(source);
    expect(_checkLexerMatches(lexerBuilder, "xy"), equals("A, EOF"));
    expect(_checkLexerMatches(lexerBuilder, "xyz"), equals("A, EOF"));
  });

  test("testShortLongRule2", () {
    LexerBuilder lexerBuilder = (source) => new ShortLongRule2(source);
    expect(_checkLexerMatches(lexerBuilder, "xy"), equals("A, EOF"));
    expect(_checkLexerMatches(lexerBuilder, "xyz"), equals("A, EOF"));
  });

  test("testWildOnEndFirstAlt", () {
    LexerBuilder lexerBuilder = (source) => new WildOnEnd1(source);
    expect(_checkLexerMatches(lexerBuilder, "xy"), equals("A, EOF"));
    expect(_checkLexerMatches(lexerBuilder, "xyz"), equals("A, EOF"));
  });

  test("testWildOnEndLastAlt", () {
    LexerBuilder lexerBuilder = (source) => new WildOnEnd2(source);
    expect(_checkLexerMatches(lexerBuilder, "xy"), equals("A, EOF"));
    expect(_checkLexerMatches(lexerBuilder, "xyz"), equals("A, EOF"));
  });

  test("testWildcardNonQuirkWhenSplitBetweenTwoRules", () {
    LexerBuilder lexerBuilder = (source) => new WildcardNonQuirk(source);
    expect(_checkLexerMatches(lexerBuilder, "xy"), equals("A, EOF"));
    expect(_checkLexerMatches(lexerBuilder, "xyqz"), equals("B, EOF"));
  });

  test("testLexerLoops", () {
    LexerBuilder lexerBuilder = (source) => new LexerLoops(source);
    expect(_checkLexerMatches(lexerBuilder, "a34bde3"), equals("ID, INT, ID, INT, EOF"));
  });

  test("testLexerNotSet", () {
    LexerBuilder lexerBuilder = (source) => new LexerNotSet(source);
    expect(_checkLexerMatches(lexerBuilder, "c"), equals("ID, EOF"));
  });

  test("testLexerKeywordIDAmbiguity", () {
    LexerBuilder lexerBuilder = (source) => new LexerKeyword(source);
    expect(_checkLexerMatches(lexerBuilder, "end"), equals("KEND, EOF"));
    expect(_checkLexerMatches(lexerBuilder, "ending"), equals("ID, EOF"));
    expect(_checkLexerMatches(lexerBuilder, "a end bcd"), equals("ID, WS, KEND, WS, ID, EOF"));
  });

  test("testLexerRuleRef", () {
    LexerBuilder lexerBuilder = (source) => new LexerRuleRef(source);
    expect(_checkLexerMatches(lexerBuilder, "32 99"), equals("INT, WS, INT, EOF"));
  });

  test("testRecursiveLexerRuleRef", () {
    LexerBuilder lexerBuilder = (source) => new RecursiveLexer1(source);
    expect(_checkLexerMatches(lexerBuilder, "/* ick */\n/* /*nested*/ */"), equals("CMT, WS, CMT, EOF"));
  });

  test("testRecursiveLexerRuleRefWithWildcard", () {
    LexerBuilder lexerBuilder = (source) => new RecursiveLexer2(source);
    String input = "/* ick */\n/* /* */\n/* /*nested*/ */\n";
    expect(_checkLexerMatches(lexerBuilder, input), equals("CMT, WS, CMT, WS, EOF"));
  });

  test("testLexerWildcardGreedyLoopByDefault", () {
    LexerBuilder lexerBuilder = (source) => new WildcardGreedyLoop(source);
    expect(_checkLexerMatches(lexerBuilder, "//x\n//y\n"), equals("CMT, EOF"));
  });

  test("testLexerWildcardLoopExplicitNonGreedy", () {
    LexerBuilder lexerBuilder = (source) => new WildcardLoop(source);
    expect(_checkLexerMatches(lexerBuilder, "//x\n//y\n"), equals("CMT, CMT, EOF"));
  });

  test("testLexerEscapeInString", () {
    LexerBuilder lexerBuilder = (source) => new LexerEscape(source);
    expect(_checkLexerMatches(lexerBuilder, "[a~]b]"), equals("STR, EOF"));
    expect(_checkLexerMatches(lexerBuilder, "[a]"), equals("STR, EOF"));
  });

  test("testLexerWildcardGreedyPlusLoopByDefault", () {
    LexerBuilder lexerBuilder = (source) => new WildcardGreedy(source);
    expect(_checkLexerMatches(lexerBuilder, "//x\n//y\n"), equals("CMT, EOF"));
  });

  test("testLexerWildcardExplicitNonGreedyPlusLoop", () {
    LexerBuilder lexerBuilder = (source) => new WildcardExplicit(source);
    expect(_checkLexerMatches(lexerBuilder, "//x\n//y\n"), equals("CMT, CMT, EOF"));
  });

  test("testLexerGreedyOptionalShouldWorkAsWeExpect", () {
    LexerBuilder lexerBuilder = (source) => new GreedyOptional(source);
    expect(_checkLexerMatches(lexerBuilder, "/**/"), equals("CMT, EOF"));
  });

  test("testGreedyBetweenRules", () {
    LexerBuilder lexerBuilder = (source) => new GreedyBetween(source);
    expect(_checkLexerMatches(lexerBuilder, "<a><x>"), equals("B, EOF"));
  });

  test("testNonGreedyBetweenRules", () {
    LexerBuilder lexerBuilder = (source) => new NonGreedyBetween(source);
    expect(_checkLexerMatches(lexerBuilder, "<a><x>"), equals("A, B, EOF"));
  });

  test("testEOFAtEndOfLineComment1", () {
    LexerBuilder lexerBuilder = (source) => new EOFAtEnd1(source);
    expect(_checkLexerMatches(lexerBuilder, "//x"), equals("CMT, EOF"));
  });

  test("testEOFAtEndOfLineComment2", () {
    LexerBuilder lexerBuilder = (source) => new EOFAtEnd2(source);
    expect(_checkLexerMatches(lexerBuilder, "//x"), equals("CMT, EOF"));
  });

  test("testEOFInSetAtEndOfLineComment", () {
    LexerBuilder lexerBuilder = (source) => new EOFInSet(source);
    expect(_checkLexerMatches(lexerBuilder, "//"), equals("CMT, EOF"));
  });

  test("testEOFSuffixInSecondRule", () {
    LexerBuilder lexerBuilder = (source) => new EOFSuffix1(source);
    expect(_checkLexerMatches(lexerBuilder, "a"), equals("B, EOF"));
  });

  test("testEOFSuffixInFirstRule", () {
    LexerBuilder lexerBuilder = (source) => new EOFSuffix2(source);
    expect(_checkLexerMatches(lexerBuilder, "a"), equals("A, EOF"));
  });

  test("testEOFByItself", () {
    LexerBuilder lexerBuilder = (source) => new EOFByItself(source);
    expect(_checkLexerMatches(lexerBuilder, "a"), equals("A, DONE, EOF"));
  });
}

List<String> _getTokenTypes(Lexer lexer, StringSource input) {
  LexerAtnSimulator interp = lexer.interpreter;
  List<String> rules = new List<String>.from(lexer.ruleNames);
  for (int i = 1; i < lexer.tokenNames.length; i++) {
    String rule = lexer.tokenNames[i];
    if (rule[0] != "'") rules[i - 1] = rule;
  }
  List<String> tokenTypes = new List<String>();
  int ttype;
  bool hitEOF = false;
  do {
    if (hitEOF) {
      tokenTypes.add("EOF");
      break;
    }
    int t = input.lookAhead(1);
    ttype = interp.match(input, lexer.DEFAULT_MODE);
    if (ttype == Token.EOF) {
      tokenTypes.add("EOF");
    } else {
      tokenTypes.add(rules[ttype - 1]);
    }
    if (t == IntSource.EOF) {
      hitEOF = true;
    }
  } while (ttype != Token.EOF);
  return tokenTypes;
}


String _checkLexerMatches(LexerBuilder lexerBuilder, String inputString) {
  StringSource source = new StringSource(inputString);
  Lexer lexer = lexerBuilder(source);
  List<String> tokenTypes = _getTokenTypes(lexer, source);
  return tokenTypes.join(", ");
}

typedef Lexer LexerBuilder(StringSource source);
