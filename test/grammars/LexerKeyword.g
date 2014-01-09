lexer grammar LexerKeyword;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

KEND : 'end' ;
ID : 'a'..'z'+ ;
WS : (' '|'\n')+ ;