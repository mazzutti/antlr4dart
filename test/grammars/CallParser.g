parser grammar CallParser;

options {
language = Dart;
}

@header {part of parser_interpreter_test;}

s : t C ;
t : A{;} | B ;