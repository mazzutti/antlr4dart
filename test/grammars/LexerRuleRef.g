lexer grammar LexerRuleRef;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

INT : DIGIT+ ;
fragment DIGIT : '0'..'9' ;
WS : (' '|'\n')+ ;