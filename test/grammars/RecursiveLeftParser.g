parser grammar RecursiveLeftParser;

options {
language = Dart;
}

@header{part of atn_interpreter_test;}

tokens {A,B,C,LP,RP,INT}
a : e B | e C ;
e : LP e RP
  | INT
  ;