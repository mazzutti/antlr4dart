library parser_exec_test;

import 'labels_test.dart' as labels;
import 'list_label_on_set_test.dart' as list_label_on_set;
import 'basic_p_exec_test.dart' as basic_p_exec;
import 'a_or_b_test.dart' as a_or_b;
import 'a_or_a_plus_test.dart' as a_or_a_plus;
import 'a_or_b_plus_test.dart' as a_or_b_plus;
import 'a_or_a_star_test.dart' as a_or_a_star;
import 'a_or_b_star_test.dart' as a_or_b_star;
import 'a_plus_test.dart' as a_plus;
import 'a_star_test.dart' as a_star;
import 'if_if_else1_test.dart' as if_if_else1;
import 'if_if_else2_test.dart' as if_if_else2;
import 'if_if_else3_test.dart' as if_if_else3;
import 'if_if_else4_test.dart' as if_if_else4;
import 'optional_test.dart' as optional;
import 'predicated_if_if_else_test.dart' as predicated_if_if_else;
import 'labeled_alternatives_test.dart' as labeled_alternatives;

main() {
  labels.main();
  list_label_on_set.main();
  basic_p_exec.main();
  a_or_b.main();
  a_or_a_plus.main();
  a_or_b_plus.main();
  a_or_a_star.main();
  a_or_b_star.main();
  a_plus.main();
  a_star.main();
  if_if_else1.main();
  if_if_else2.main();
  if_if_else3.main();
  if_if_else4.main();
  optional.main();
  predicated_if_if_else.main();
  labeled_alternatives.main();
}