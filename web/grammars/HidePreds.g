grammar HidePreds;

options {
  language = Dart;
}

@header{part of hide_preds;}

@members {
List log = new List();
int i;
}

s : a+ ;
a : {i=1;} ID {i==1}? {log.add("alt 1");}
  | {i=2;} ID {i==2}? {log.add("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;