lexer grammar Delegator12;

options {
  language = Dart;
}

@header{part of delegator12;}

import DelegatorImport12;

A : 'a' B {log.add("M.A");} ;
WS : (' '|'\n') -> skip ;