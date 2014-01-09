library parse_trees_test;

import 'token_and_rule_test.dart' as token_and_rule;
import 'token2_test.dart' as token2;
import 'two_alts_test.dart' as two_alts;
import 'alt_loop_test.dart' as alt_loop;
import 'rule_ref_test.dart' as rule_ref;
import 'extra_token_test.dart' as extra_token;
import 'no_viable_alt_test.dart' as no_viable_alt;
import 'sync_test.dart' as sync;

main() {
  token_and_rule.main();
  token2.main();
  two_alts.main();
  alt_loop.main();
  rule_ref.main();
  extra_token.main();
  no_viable_alt.main();
  sync.main();
}