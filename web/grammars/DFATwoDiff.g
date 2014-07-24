grammar DFATwoDiff;

options {
language = Dart;
}

@header {part of dfa_two_diff;}

s
  : ('$' a | '@' b)+ ;
a : e ID ;
b : e INT ID ;
e : INT | ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\t'|'\n')+ -> skip ;