parser grammar ArbitraryLeft;

options {
language = Dart;
}

@header{part of atn_interpreter_test;}

a : A+ B | A+ C ;
