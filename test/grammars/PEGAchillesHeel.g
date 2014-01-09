parser grammar PEGAchillesHeel;

options {
language = Dart;
}

@header{part of atn_interpreter_test;}

a : A | A B ;