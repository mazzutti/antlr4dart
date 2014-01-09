lexer grammar EnumNotID;

options{
language = Dart;
}

@header{part of enum_not_id;}

ENUM : [a-z]+ {text == "enum"}? ;
ID   : [a-z]+ ;
WS : (' '|'\n') -> skip ;