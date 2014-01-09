grammar Declarations;

options {
language = Dart;
}

@header {part of declarations;}

@parser::members {
List log = new List();
}

s @after {log.add($ctx.toStringTree(this));} : declarator EOF ;
declarator
        : declarator '[' e ']'
        | declarator '[' ']'
        | declarator '(' ')'
        | '*' declarator // binds less tight than suffixes
        | '(' declarator ')'
        | ID
        ;
e : INT ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') -> skip ;