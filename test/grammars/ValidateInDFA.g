grammar ValidateInDFA;

options {
  language = Dart;
}

@header{part of validate_in_dfa;}

s : a ';' a;
a : {false}? ID  {print("alt 1");}
  | {true}?  INT {print("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip;
