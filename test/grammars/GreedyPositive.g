lexer grammar GreedyPositive;

options {
language = Dart;
}

@header {part of greedy_positive;}

CMT : ('//' .*? '\n')+;
WS : (' '|'\t')+;