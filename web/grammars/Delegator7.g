grammar Delegator7;

options {
  language = Dart;
}

@header{part of delegator7;}

import DelegatorImport7_1, DelegatorImport7_2;

s : x y ;
B : 'b' ;
A : 'a' ;
C : 'c' ;
WS : (' '|'\n') -> skip ;