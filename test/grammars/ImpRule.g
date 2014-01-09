grammar ImpRule;

options{
language = Dart;
}

@header{part of imp_rule;}

import ImpRuleImport;

s : a ;
B : 'b' ;
WS : (' '|'\n') -> skip ;