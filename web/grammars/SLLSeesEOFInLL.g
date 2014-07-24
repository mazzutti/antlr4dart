grammar SLLSeesEOFInLL;

options {
language = Dart;
}

@header {part of sll_sees_eof_in_ll;}

s
 : a ;
a : e ID ;
b : e INT ID ;
e : INT | ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\t'|'\n')+ -> skip ;