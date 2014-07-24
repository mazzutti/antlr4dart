lexer grammar GreedyOptional;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

CMT : '/*' ('*/')? '*/' ;