grammar Unpredicated3;

options {
  language = Dart;
}

@header{part of unpredicated3;}

@members {
List log = new List();
}

s : a {log.add("alt 1");}
  | b {log.add("alt 2");}
  ;
a : {false}? ID INT
  | ID INT
  ;
b : ID ID
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;