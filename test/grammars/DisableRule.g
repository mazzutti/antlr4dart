lexer grammar DisableRule;

options {
  language = Dart;
}

@header{part of disable_rule;}

E1 : 'enum' {false}? ;
E2 : 'enum' {true}? ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') -> skip ;