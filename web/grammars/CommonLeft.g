parser grammar CommonLeft;

options {
language = Dart;
}

@header{library atn_interpreter_test.common_left;

import "package:antlr4dart/antlr4dart.dart";}

a : A B | A C ;
