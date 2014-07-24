grammar Delegator10;

options {
  language = Dart;
}

@header{part of delegator10;}

import DelegatorImport10_1, DelegatorImport10_2;

b : 'b' | 'c' {log.add("M.b");} | B | A ;
WS : (' '|'\n') -> skip ;