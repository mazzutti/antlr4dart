grammar Delegator8;

options {
  language = Dart;
}

@header{part of delegator8;}

import DelegatorImport8;

b : 'b'|'c' ;
WS : (' '|'\n') -> skip ;