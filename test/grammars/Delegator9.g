grammar Delegator9;

options {
  language = Dart;
}

@header{part of delegator9;}

import DelegatorImport9;

prog : decl ;
type : 'int' | 'float' ;

ID  : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') -> skip ;