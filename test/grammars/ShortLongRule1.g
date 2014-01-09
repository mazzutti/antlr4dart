lexer grammar ShortLongRule1;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

A : 'xy'
  | 'xyz'
  ;
Z : 'z'
  ;