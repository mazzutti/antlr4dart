lexer grammar WildOnEnd2;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

A : 'xy'
  | 'xy' .
  ;
Z : 'z'
  ;
