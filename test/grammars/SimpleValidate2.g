grammar SimpleValidate2;

options {
  language = Dart;
}

@members {
List log = new List();
}

@header{part of simple_validate2;}

s : a a a;
a : {false}? ID  {log.add("alt 1");}
    | {true}?  INT {log.add("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;