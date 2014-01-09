lexer grammar NonGreedyPositive;

options {
language = Dart;
}

@header {part of non_greedy_positive;}

CMT : ('//' .*? '\n')+?;
WS : (' '|'\t')+;
