library left_recursion_test;

import 'simple_left_recursion_test.dart' as simple;
import 'direct_call_test.dart' as direct_call;
import 'sem_pred_test.dart' as sem_pred;
import 'ternary_expr_test.dart' as ternary_expr;
import 'expressions_test.dart' as expressions;
//import 'java_expressions_test.dart' as java_expressions;
import 'declarations_test.dart' as declarations;
import 'return_value_and_actions1_test.dart' as return_value_and_actions1;
import 'return_value_and_actions2_test.dart' as return_value_and_actions2;
import 'labels_on_op_test.dart' as labels_on_op;
import 'prefix_op_test.dart' as prefix_op;
import 'ambig_lr_test.dart' as ambig_lr;
import 'whitespace_influence_test.dart' as whitespace_influence;

main() {
  simple.main();
  direct_call.main();
  sem_pred.main();
  ternary_expr.main();
  expressions.main();
  // failing on dart2js
  // java_expressions.main();
  declarations.main();
  return_value_and_actions1.main();
  return_value_and_actions2.main();
  labels_on_op.main();
  prefix_op.main();
  ambig_lr.main();
  whitespace_influence.main();
}