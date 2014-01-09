grammar Delegator6;

options {
  language = Dart;
}

@header{part of delegator6;}

import DelegatorImport6_1, DelegatorImport6_2;

s : x y ;
B : 'b' ;
A : 'a' ;
C : 'c' ;
WS : (' '|'\n') -> skip ;