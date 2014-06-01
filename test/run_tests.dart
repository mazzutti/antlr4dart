library antlr4dart_test_runner;

//functional tests
import 'lexer_exec/lexer_exec_test.dart' as lexer_exec;
import 'parser_exec/parser_exec_test.dart' as parser_exec;
import 'misc/atn_lexer_interpreter_test.dart' as atn_lexer_interpreter;
import 'misc/atn_interpreter_test.dart' as atn_interpreter;
import 'misc/parser_interpreter_test.dart' as parser_interpreter;
import "misc/lexer01_test.dart" as lexer01;
import 'misc/lexer02_test.dart' as lexer02;
import 'misc/lexer03_test.dart' as lexer03;
import 'misc/lexer04_test.dart' as lexer04;
import 'misc/lexer05_test.dart' as lexer05;
import 'misc/lexer06_test.dart' as lexer06;
import 'misc/lexer07_test.dart' as lexer07;
import 'misc/lexer08_test.dart' as lexer08;
import 'misc/lexer09_test.dart' as lexer09;
import 'misc/lexer10_test.dart' as lexer10;
import 'misc/lexer11_test.dart' as lexer11;
import 'misc/lexer12_test.dart' as lexer12;
import 'misc/lexer_xml_test.dart' as lexer_xml;
import 'misc/parser1_test.dart' as parser1;
import 'misc/parser2_test.dart' as parser2;
import 'misc/parser3_test.dart' as parser3;
import 'misc/calc_test.dart' as calc;
import 'misc/actions_test.dart' as actions;
import 'misc/llstar_test.dart' as llstar;
import 'misc/fuzzy_test.dart' as fuzzy;
import 'misc/hoist_test.dart' as hoist;
import 'misc/finally_block_test.dart' as finally_block;
import 'misc/eof_test.dart' as eof;
import 'misc/special_states_test.dart' as special_states;
import 'misc/empty_alt_test.dart' as empty_alt;
import 'misc/subrule_predict_test.dart' as subrule_predict;
import 'misc/token_label_test.dart' as token_label;
import 'misc/rule_label_test.dart' as rule_label;
import 'misc/return_values_test.dart' as return_values;
import 'misc/rule_test.dart' as rule;
import 'misc/bug_test.dart' as bug;
import 'misc/parameters_test.dart' as parameters;
import 'misc/trace_test.dart' as trace;
import 'misc/common_token_source_test.dart' as common_token_source;
import 'misc/parser_interpreter_test.dart' as parser_interpreter;
import 'misc/buffered_token_source_test.dart' as buffered_token_source;
import 'sem_pred_eval_parser/sem_pred_test.dart' as sem_pred;
import 'sets/set_test.dart' as set_test;
import 'composite/composite_test.dart' as composite_test;
import 'full_context/full_context_test.dart' as full_context;
import 'parse_trees/parse_trees_test.dart' as parse_trees;
import 'left_recursion/left_recursion_test.dart' as left_recursion;
import 'listeners/listeners_test.dart' as listeners;


class TestRunner {
  void run() {
    lexer_exec.main();
    parser_exec.main();
    atn_lexer_interpreter.main();
    atn_interpreter.main();
    parser_interpreter.main();
    lexer01.main();
    lexer02.main();
    lexer03.main();
    lexer04.main();
    lexer05.main();
    lexer06.main();
    lexer07.main();
    lexer08.main();
    lexer09.main();
    lexer10.main();
    lexer11.main();
    lexer12.main();
    lexer_xml.main();
    parser1.main();
    parser2.main();
    calc.main();
    actions.main();
    parser3.main();
    llstar.main();
    fuzzy.main();
    hoist.main();
    finally_block.main();
    eof.main();
    special_states.main();
    empty_alt.main();
    subrule_predict.main();
    token_label.main();
    rule_label.main();
    return_values.main();
    rule.main();
    bug.main();
    parameters.main();
    trace.main();
    sem_pred.main();
    set_test.main();
    common_token_source.main();
    buffered_token_source.main();
    composite_test.main();
    full_context.main();
    parse_trees.main();
    left_recursion.main();
    listeners.main();
    parser_interpreter.main();
  }
}

main() {
  new TestRunner().run();
}
