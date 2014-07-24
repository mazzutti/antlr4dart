lexer grammar Bug; 
options {
  language = Dart;
}

@header{part of bug;}
 
ID_LIKE
    : 'defined' 
    | {false}? Identifier 
    | Identifier 
    ; 
 
fragment 
Identifier: 'a'..'z'+ ; // with just 'a', output compiles 
