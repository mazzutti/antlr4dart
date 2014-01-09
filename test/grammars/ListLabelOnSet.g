grammar ListLabelOnSet;

options {
language = Dart;
}

@header {part of list_label_on_set;}

a : b b* ';' ;
b : ID val+=(INT | FLOAT)*;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
FLOAT : [0-9]+ '.' [0-9]+;
WS : (' '|'\n') -> skip ;