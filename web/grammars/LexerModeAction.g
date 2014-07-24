lexer grammar LexerModeAction;

options {
language = Dart;
}

@header {part of lexer_mode_action;}

STRING_START : '"' -> mode(STRING_MODE), more ;
WS : (' '|'\n') -> skip ;
mode STRING_MODE;
STRING : '"' -> mode(DEFAULT_MODE) ; // ttype 2 since '"' ambiguity
ANY : . -> more ;