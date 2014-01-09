lexer grammar NonGreedyBetween;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

A : '<a>' ;
B : '<' .+? '>' ;