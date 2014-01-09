grammar Delegator4;

options {
  language = Dart;
}

@header{part of delegator4;}

import DelegatorImport4;

s : 'b' {foo();} ;
WS : (' '|'\n') -> skip ;