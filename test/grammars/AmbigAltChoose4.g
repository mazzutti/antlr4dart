parser grammar AmbigAltChoose4;

options {
language = Dart;
}

@header{library atn_interpreter_test.ambig_alt_choose4;

import "package:antlr4dart/antlr4dart.dart";}

a : A B | A B | A B C ;