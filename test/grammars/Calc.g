grammar Calc;
options {
  language = Dart;
}

@header{part of calc;}

evaluate returns [num result]: e=expression {$result = $e.result;};

expression returns [num result]: m=mult (
    '+' m1=mult {$m.result += $m1.result;}
  | '-' m1=mult {$m.result -= $m1.result;}
  )* {$result = $m.result;};

mult returns [num result]: l=log (
    '*' l2=log {$l.result *= $l2.result;}
  | '/' l1=log {$l.result /= $l1.result;}
  )* {$result = $l.result;};

log returns [num result]: 'ln' e=exp {$result = log();}
    | e=exp {$result = $e.result;}
    ;

exp returns [num result]: a=atom ('^' a1=atom {$a.result = pow($a.result, $a1.result);} )? {$result = $a.result;}
    ;

atom returns [num result]:
    n=INTEGER {$result = int.parse($n.text);}
  | n=DECIMAL {$result = double.parse($n.text);} 
  | '(' r=expression {$result = $r.result;} ')'
  | 'PI' {$result = PI;}
  | 'E' {$result = E;}
  ;

INTEGER: DIGIT+;

DECIMAL: DIGIT+ '.' DIGIT+;

fragment
DIGIT: '0'..'9';

WS: (' ' | '\n' | '\t')+ -> channel(HIDDEN);
