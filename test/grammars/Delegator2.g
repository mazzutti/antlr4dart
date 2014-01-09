grammar Delegator2;

options {
  language = Dart;
}

@header{part of delegator2;}

import DelegatorImport2;

s : label=a[3] {log.add($label.y);} ;
B : 'b' ;
WS : (' '|'\n') -> skip ;