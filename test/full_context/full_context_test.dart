library full_context_test;

import 'ambig_yields_test.dart' as ambig_yields;
import 'sensitive_dfa_test.dart' as sensitive_dfa;
import 'dfa_two_diff_test.dart' as dfa_two_diff;
import 'sll_sees_eof_in_ll_test.dart' as sll_sees_eof_in_ll;
import 'if_then_else_test.dart' as if_then_else;
import 'simulate_tail_test.dart' as simulate_tail;
import 'ambiguity_no_loop_test.dart' as ambiguity_no_loop;
import 'expr_ambiguity_test.dart' as expr_ambiguity;

main() {
  ambig_yields.main();
  sensitive_dfa.main();
  dfa_two_diff.main();
  sll_sees_eof_in_ll.main();
  if_then_else.main();
  simulate_tail.main();
  ambiguity_no_loop.main();
  expr_ambiguity.main();
}