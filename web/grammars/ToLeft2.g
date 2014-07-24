grammar ToLeft2;

options {
  language = Dart;
}

@header{part of to_left2;}

@members {
List log = new List();
int i=0;
}

s : ({i++; log.add("i=\$i");} a)+ ;
a : {i % 2 == 0}? ID {log.add("alt 1");}
  | {i % 2 != 0}? ID {log.add("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;