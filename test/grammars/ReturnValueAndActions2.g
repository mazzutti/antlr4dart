grammar ReturnValueAndActions2;

options {
language = Dart;
}

@header {part of return_value_and_actions2;}

@parser::members {
List log = new List();
}

s : q=e {log.add($e.v);} ;
e returns [int v]
  : a=e op='*' b=e {$v = $a.v * $b.v;}  # mult
  | a=e '+' b=e {$v = $a.v + $b.v;}     # add
  | INT         {$v = $INT.int;}        # anInt
  | '(' x=e ')' {$v = $x.v;}            # parens
  | x=e '++'    {$v = $x.v+1;}          # inc
  | e '--'                              # dec
  | ID          {$v = 3;}               # anID
  ; 

ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') -> skip ;
