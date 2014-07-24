parser grammar CallParser;

options {
language = Dart;
}

@header{part of parser_interpreter_test;}

call : t C ;
t : A{;} | B ;