lexer grammar IDVsEnum;

options {
language = Dart;
}

@header{part of id_vs_enum;}

ENUM : 'enum' {false}? ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') -> skip ;