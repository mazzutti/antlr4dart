grammar HidePredsGlobal;

options {
  language = Dart;
}

@header{part of hide_preds_global;}

@members {
List log = new List();
void f(s) {log.add(s);}
bool p(v) {log.add("eval=\$v"); return v;}
}

s : e {} {p(true)}? {f("parse");} '!' ;
t : e {} {p(false)}? ID ;
e : ID | ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;