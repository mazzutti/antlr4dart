parser grammar ArbitraryLeft;

options {
language = Dart;
}

@header{library atn_interpreter_test.arbitrary_left;

import "package:antlr4dart/antlr4dart.dart";}

a : A+ B | A+ C ;
