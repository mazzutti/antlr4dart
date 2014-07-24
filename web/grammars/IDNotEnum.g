lexer grammar IDNotEnum;

options {
language = Dart;
}

@header{part of id_not_enum;}

ENUM : [a-z]+ {false}? ;
ID   : [a-z]+ ;
WS : (' '|'\n') -> skip ;