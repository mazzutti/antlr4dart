lexer grammar LexerMode;

options {
language = Dart;
}

@header {part of lexer_mode;}

STRING_START : '"' -> pushMode(STRING_MODE), more;
WS : (' '|'\n') -> skip ;
mode STRING_MODE;
STRING : '"' -> popMode;
ANY : . -> more;