lexer grammar GreedyClosure;

options {
language = Dart;
}

@header {part of greedy_closure;}

CMT : '//' .*? '\n' CMT*;
WS : (' '|'\\t')+;