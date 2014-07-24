lexer grammar Fuzzy;
options {
    language=Dart;
}

@header{part of fuzzy;}

@members {
List outbuf = new List();
void outputMsg(msg) {
  outbuf.add(msg);
}
}

IMPORT
	:	'import' WS QIDStar WS? ';'
	;
	
/** Avoids having "return foo;" match as a field */
RETURN
	:	'return' (.)*? ';'
	;

CLASS
	:	'class' WS ID WS? ('extends' WS QID WS?)?
		('implements' WS QID WS? (',' WS? QID WS?)*)? '{'
        {outputMsg("found class \${text}\n");}
	;
	
METHOD
    :   TYPE WS ID WS? '(' ( ARG WS? (',' WS? ARG WS?)* )? ')' WS? 
       ('throws' WS QID WS? (',' WS? QID WS?)*)? '{'
        {outputMsg("found method \${text}\n");}
    ;

FIELD
    :   TYPE WS ID '[]'? WS? (';'|'=')
        {this.outputMsg("found var \${text}\n");}
    ;

STAT:	('if'|'while'|'switch'|'for') WS? '(' ;
	
CALL
    :   QID WS? '('
        {outputMsg("found call \${text}\n");}
    ;

COMMENT
    :   '/*' (.)*? '*/'
        {outputMsg("found comment \${text}\n");}
    ;

SL_COMMENT
    :   '//' (.)*? '\n'
        {outputMsg("found // comment \${text}\n");}
    ;
	
STRING
	:	'"' (ESC | .)*? '"'
	;

CHAR
	:	'\'' (ESC | .)*? '\''
	;

WS  :   (' '|'\t'|'\n')+
    ;

QID :	ID ('.' ID)*
	;
	
/** QID cannot see beyond end of token so using QID '.*'? somewhere won't
 *  ever match since k=1 lookahead in the QID loop of '.' will make it loop.
 *  I made this rule to compensate.
 */
QIDStar
	:	ID ('.' ID)* '.*'?
	;

TYPE:   QID '[]'?
    ;
    
ARG :   TYPE WS ID
    ;

ID  :   ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*
    ;

ESC	:	'\\' ('"'|'\''|'\\')
	;
