lexer grammar NonGreedyClosure;

options {
language = Dart;
}

@header {part of non_greedy_closure;}

CMT : '//' .*? '\n' CMT*?;
WS : (' '|'\t')+;