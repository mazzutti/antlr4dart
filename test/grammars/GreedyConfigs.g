lexer grammar GreedyConfigs;

options {
language = Dart;
}

@header {part of greedy_configs;}

@members {
List log = new List();
}

I : ('a' | 'ab') {log.add(text);} ;
WS : (' '|'\n') -> skip ;
J : .;