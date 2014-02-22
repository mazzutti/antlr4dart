parser grammar CallParser;

options {
language = Dart;
}

@header{library parser_interpreter_test.call_parser;

import "package:antlr4dart/antlr4dart.dart";}

s : t C ;
t : A{;} | B ;