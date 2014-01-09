grammar ToLeft1;

options {
  language = Dart;
}

@header{part of to_left1;}

@members {
List log = new List();
}
s : a+ ;
a : {false}? ID {log.add("alt 1");}
  | {true}?  ID {log.add("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;