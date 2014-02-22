parser grammar PEGAchillesHeel;

options {
language = Dart;
}

@header{library atn_interpreter_test.peg_a_chilles_heel;

import "package:antlr4dart/antlr4dart.dart";}

a : A | A B ;