library listeners_test;

import 'basic_test.dart' as basic;
import 'token_getters_test.dart' as token_getters;
import 'rule_getters_test.dart' as rule_getters;
import 'lr_test.dart' as lr;
import 'lr_with_labels_test.dart' as lr_with_labels;

main() {
  basic.main();
  token_getters.main();
  rule_getters.main();
  lr.main();
  lr_with_labels.main();
}