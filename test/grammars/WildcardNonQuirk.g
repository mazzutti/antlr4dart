lexer grammar WildcardNonQuirk;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

A : 'xy' ;
B : 'xy' . 'z' ;