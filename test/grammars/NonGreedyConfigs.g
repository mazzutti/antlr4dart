lexer grammar NonGreedyConfigs;

options {
language = Dart;
}

@header {part of non_greedy_configs;}

@members {
List log = new List();
}

I : .*? ('a' | 'ab') {log.add(text);} ;
WS : (' '|'\n') -> skip ;
J : . {log.add(text);};