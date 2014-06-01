parser grammar AOrBParser1;

options {
language = Dart;
}

@header{part of parser_interpreter_test;}

s : A{;} | B ;