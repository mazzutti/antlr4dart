lexer grammar MoreCommand;

options {
language = Dart;
}

@header {part of more_command;}

@members{
List log = new List();
}

I : '0'..'9'+ {log.add("I");} ;
WS : '#' -> more ;
