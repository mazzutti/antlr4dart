grammar SensitiveDFA;

options {
language = Dart;
}

@header {part of sensitive_dfa;}

s
  : '$' a | '@' b ;
a : e ID ;
b : e INT ID ;
e : INT | ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\t'|'\n')+ -> skip ;