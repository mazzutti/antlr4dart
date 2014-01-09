lexer grammar EOFByItself;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

DONE : EOF ;
A : 'a';