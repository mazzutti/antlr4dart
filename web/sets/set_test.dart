library set_tests;

import 'not_become_set_test.dart' as not_become_set;
import 'parser_set_test.dart' as parser_set;
import 'parser_not_set_test.dart' as parser_not_set;
import 'parser_not_token1_test.dart' as parser_not_token1;
import 'parser_not_token2_test.dart' as parser_not_token2;
import 'rule_as_set_test.dart' as rule_as_set;
import 'not_char1_test.dart' as not_char1;
import 'not_char2_test.dart' as not_char2;
import 'not_char3_test.dart' as not_char3;
import 'not_char4_test.dart' as not_char4;
import 'optional1_test.dart' as optional1;
import 'optional2_test.dart' as optional2;
import 'star_lexer_test.dart' as star_lexer;
import 'plus_lexer_test.dart' as plus_lexer;
import 'optional_set_test.dart' as optional_set;
import 'star_set_test.dart' as star_set;
import 'plus_set_test.dart' as plus_set;
import 'lexer_optional_set_test.dart' as lexer_optional_set;
import 'lexer_star_set_test.dart' as lexer_star_set;
import 'lexer_plus_set_test.dart' as lexer_plus_set;
import 'char_set_literal_test.dart' as char_set_literal;

main() {
  not_become_set.main();
  parser_set.main();
  parser_not_set.main();
  parser_not_token1.main();
  parser_not_token2.main();
  rule_as_set.main();
  not_char1.main();
  not_char2.main();
  not_char3.main();
  not_char4.main();
  optional1.main();
  optional2.main();
  star_lexer.main();
  plus_lexer.main();
  optional_set.main();
  star_set.main();
  plus_set.main();
  lexer_optional_set.main();
  lexer_star_set.main();
  lexer_plus_set.main();
  char_set_literal.main();
}