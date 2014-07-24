grammar Delegator3;

options {
  language = Dart;
}

@header{part of delegator3;}

import DelegatorImport3;

s : a {log.add($a.text);} ;
B : 'b' ;
WS : (' '|'\n') -> skip ;