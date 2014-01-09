lexer grammar GreedyOptional2;

options {
language = Dart;
}

@header {part of greedy_optional2;}

CMT : '//' .*? '\n' CMT??;
WS : (' '|'\t')+;