grammar Headers;

options{
language = Dart;
}

import HeadersImport;

@header{part of headers;}

s : a ;
B : 'b' ;
WS : (' '|'\n') -> skip ;