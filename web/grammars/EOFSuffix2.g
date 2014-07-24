lexer grammar EOFSuffix2;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

A : 'a' EOF ;
B : 'a';