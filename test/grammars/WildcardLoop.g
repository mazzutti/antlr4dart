lexer grammar WildcardLoop;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

CMT : '//' .*? '\n' ;