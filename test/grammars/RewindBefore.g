grammar RewindBefore;

options {
  language = Dart;
}

@header{part of rewind_before;}

@members {
List log = new List();
}

s : a a;
a : {inputSource.lookToken(1).text == "x"}? ID INT {log.add("alt 1");}
  | {inputSource.lookToken(1).text == "y"}? ID INT {log.add("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;