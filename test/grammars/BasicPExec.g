grammar BasicPExec;

options {
language = Dart;
}

@header {part of basic_p_exec;}

@members {
List log = new List();
}

a : ID INT {log.add($text);} ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;