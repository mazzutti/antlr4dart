grammar NoTruePreds;

options {
  language = Dart;
}

@header{part of no_true_preds;}

@members {
List log = new List();
}

s : a a;
a : {false}? ID INT {log.add("alt 1");}
  | {false}? ID INT {log.add("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;