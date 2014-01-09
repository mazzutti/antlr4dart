parser grammar SimpleLoop;

options {
language = Dart;
}

@header{part of atn_interpreter_test;}

a : A+ B ;