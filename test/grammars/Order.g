grammar Order;

options {
  language = Dart;
}

@members {
List log = new List();
}

@header{part of order;}

s : a {} a;
a : ID {log.add("alt 1");}
  | {true}? ID {log.add("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;