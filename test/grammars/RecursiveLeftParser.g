parser grammar RecursiveLeftParser;

options {
language = Dart;
}

@header{library atn_interpreter_test.recursive_left_parser;

import "package:antlr4dart/antlr4dart.dart";}

tokens {A,B,C,LP,RP,INT}
a : e B | e C ;
e : LP e RP
  | INT
  ;