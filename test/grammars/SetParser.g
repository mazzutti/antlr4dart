parser grammar SetParser;

options {
language = Dart;
}

@header{library atn_interpreter_test.set_parser;

import "package:antlr4dart/antlr4dart.dart";}

tokens {A,B,C}
a : ~A ;