grammar Labels;

options {
language = Dart;
}

@header {part of labels;}

a : b1=b b2+=b* b3+=';' ;
b : id=ID val+=INT*;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;