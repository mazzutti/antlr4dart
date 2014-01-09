lexer grammar EOFSuffix1;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

A : 'a' ;
B : 'a' EOF ;