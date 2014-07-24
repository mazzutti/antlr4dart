lexer grammar ActionPlacement;
options {
  language = Dart;
}

@header{part of action_placement;}

@members{
List log = new List();
}

I : ({log.add("stuff fail: \${text}");} 'a' 
    | {log.add("stuff0: \${text}");} 'a' {log.add("stuff1: \${text}");} 'b' {log.add("stuff2: \${text}");}) {log.add(text);} ;
WS : (' '|'\n') -> skip ;
J : .;