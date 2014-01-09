lexer grammar CombinedCommand;

options {
language = Dart;
}

@header {part of combined_command;}

@members {
List log = new List();
}

I : '0'..'9'+ {log.add("I");} ;
HASH : '#' -> type(100), skip, more ;