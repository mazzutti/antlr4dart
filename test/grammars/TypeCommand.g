lexer grammar TypeCommand;

options {
language = Dart;
}

@header {part of type_command;}

@members {
List log = new List();
}

I : '0'..'9'+ {log.add("I");} ;
HASH : '#' -> type(HASH) ;