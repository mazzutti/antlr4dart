lexer grammar GreedyOptional1;

options {
language = Dart;
}

@header {part of greedy_optional1;}

CMT : '//' .*? '\n' CMT?;
WS : (' '|'\t')+;