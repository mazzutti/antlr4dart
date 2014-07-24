grammar Simple;

options {
  language = Dart;
}

@members {
List log = new List();
}

@header{part of simple;}

s : a a a;
a : {false}? ID {log.add("alt 1");}
  | {true}?  ID {log.add("alt 2");}
  | INT         {log.add("alt 3");}
  ;

ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;