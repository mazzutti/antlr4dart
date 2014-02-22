parser grammar AOrBParser1;

options {
language = Dart;
}

@header{library parser_interpreter_test.a_or_b_parser1;

import "package:antlr4dart/antlr4dart.dart";}


s : A{;} | B ;