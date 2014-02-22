parser grammar AmbigAltChoose1;

options {
language = Dart;
}

@header{library atn_interpreter_test.ambig_alt_choose1;

import "package:antlr4dart/antlr4dart.dart";}

a : A B | A B ;