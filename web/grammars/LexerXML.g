lexer grammar LexerXML;
options {
  language = Dart;
}

@header{part of lexer_xml;}

DOCUMENT
    :  XMLDECL? WS? DOCTYPE? WS? ELEMENT WS?    
    ;

fragment DOCTYPE
    :
        '<!DOCTYPE' WS GENERIC_ID
        WS
        ( 
            ( 'SYSTEM' WS VALUE 
                
            | 'PUBLIC' WS VALUE WS VALUE
          
            ) 
            ( WS )?
        )?
        ( INTERNAL_DTD )?
	'>';



fragment INTERNAL_DTD : '[' (.)*? ']' ;


fragment PI :
        '<?' GENERIC_ID WS?
        ( ATTRIBUTE WS? )*  '?>'
	;

fragment XMLDECL :
        '<?' ('x'|'X') ('m'|'M') ('l'|'L') WS?
        ( ATTRIBUTE WS? )*  '?>'
	;


fragment ELEMENT
    : ( START_TAG
            (ELEMENT
            | PCDATA
            | CDATA 
            | COMMENT
            | PI
            )* 
            END_TAG
        | EMPTY_ELEMENT
        )
    ;

fragment START_TAG 
    : '<' WS? GENERIC_ID WS?
        ( ATTRIBUTE WS? )* '>'
    ;

fragment EMPTY_ELEMENT 
    : '<' WS? GENERIC_ID WS?
        ( ATTRIBUTE WS? )* '/>'
    ;

fragment ATTRIBUTE 
    : GENERIC_ID WS? '=' WS? VALUE
    ;

fragment END_TAG 
    : '</' WS? GENERIC_ID WS? '>'
    ;

fragment COMMENT
	:	'<!--' (.)*? '-->'
	;

fragment CDATA
	:	'<![CDATA[' (.)*? ']]>'
	;

fragment PCDATA : (~'<')+ ; 


fragment VALUE : 
        ( '\"' (~'\"')* '\"'
        | '\'' (~'\'')* '\''
        )
	;


fragment GENERIC_ID 
    : ( LETTER | '_' | ':') 
        (LETTER | '0'..'9' | '.' | '-' | '_' | ':' )*
	;

fragment LETTER
	: 'a'..'z' 
	| 'A'..'Z'
	;

fragment WS  :
        (   ' '
        |   '\t'
        |  ( '\n'
            |	'\r\n'
            |	'\r'
            )
        )+
    ;    

