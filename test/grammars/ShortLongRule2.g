lexer grammar ShortLongRule2;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

A : 'xyz'
  | 'xy'
  ;