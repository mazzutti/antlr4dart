parser grammar SimpleLoop;

options {
language = Dart;
}

@header{library atn_interpreter_test.simple_loop;

import "package:antlr4dart/antlr4dart.dart";}

a : A+ B ;