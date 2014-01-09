grammar Hoist;
options {
    language=Dart;
}

@header{part of hoist;}

/* With this true, enum is seen as a keyword.  False, it's an identifier */
@members {
bool enableEnum = false;
}

stat returns [String enumIs] 
    : identifier    {$enumIs = "ID";}
    | enumAsKeyword {$enumIs = "keyword";}
    ;

identifier
    : ID
    | enumAsID
    ;

enumAsKeyword : {enableEnum}? 'enum' ;

enumAsID : {!enableEnum}? 'enum' ;

ID  :   ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

INT :	('0'..'9')+
    ;

WS  :   (   ' '
        |   '\t'
        |   '\r'
        |   '\n'
        )+ -> channel(HIDDEN)
    ;    
