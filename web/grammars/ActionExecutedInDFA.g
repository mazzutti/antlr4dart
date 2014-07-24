lexer grammar ActionExecutedInDFA;

options {
language = Dart;
}

@header {part of action_executed_in_dfa;}

@members{
List log = new List();
}

I : '0'..'9'+ {log.add("I");} ;
WS : (' '|'\n') -> skip ;