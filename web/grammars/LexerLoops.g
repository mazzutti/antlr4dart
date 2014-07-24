lexer grammar LexerLoops;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

INT : '0'..'9'+ ;
ID : 'a'..'z'+ ;