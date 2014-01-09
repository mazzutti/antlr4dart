grammar ReturnValueAndActions1;

options {
language = Dart;
}

@header {part of return_value_and_actions1;}

@parser::members {
List log = new List();
}

s : e {log.add($e.v);} ;
e returns [int v, List<String> ignored]
  : a=e '*' b=e {$v = $a.v * $b.v;}
  | a=e '+' b=e {$v = $a.v + $b.v;}
  | INT {$v = $INT.int;}
  | '(' x=e ')' {$v = $x.v;}
  ;
INT : '0'..'9'+ ;
WS : (' '|'\n') -> skip ;
