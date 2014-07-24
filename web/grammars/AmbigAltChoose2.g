parser grammar AmbigAltChoose2;

options {
language = Dart;
}

@header{library atn_interpreter_test.ambig_alt_choose2;

import "package:antlr4dart/antlr4dart.dart";}

a : (A B | A B) C ;