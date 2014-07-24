grammar SimpleValidate1;

options {
  language = Dart;
}

@header{part of simple_validate1;}

s : a ;
a : {false}? ID  {print("alt 1");}
    | {true}?  INT {print("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip;