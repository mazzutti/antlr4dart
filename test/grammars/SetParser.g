parser grammar SetParser;

options {
language = Dart;
}

@header{part of atn_interpreter_test;}

tokens {A,B,C}
a : ~A ;