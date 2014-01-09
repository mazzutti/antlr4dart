lexer grammar Lexer12;
options {
    language=Dart;
}

@header{part of lexer12;}

IMPORT
  : 'import' WS QIDStar WS? ';'
  ;
  
/** Avoids having "return foo;" match as a field */
RETURN
  : 'return' (.)*? ';'
  ;

CLASS
  : 'class' WS ID WS? ('extends' WS QID WS?)?
    ('implements' WS QID WS? (',' WS? QID WS?)*)? '{'
  ;
  
COMMENT
    :   '/*' (.)*? '*/'
    ;

STRING
    : '"' (ESC | .)*? '"'
  ;

CHAR
  : '\'' (ESC | .)*? '\''
  ;

WS  :   (' '|'\t'|'\n')+
    ;

fragment
QID : ID ('.' ID)*
  ;
  
/** QID cannot see beyond end of token so using QID '.*'? somewhere won't
 *  ever match since k=1 lookahead in the QID loop of '.' will make it loop.
 *  I made this rule to compensate.
 */
fragment
QIDStar
  : ID ('.' ID)* '.*'?
  ;

fragment
TYPE:   QID '[]'?
    ;
    
fragment
ARG :   TYPE WS ID
    ;

fragment
ID  :   ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*
    ;

fragment
ESC : '\\' ('"'|'\''|'\\')
  ;