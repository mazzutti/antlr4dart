grammar LabeledAlternatives;

options {
language = Dart;
}

@header {part of labeled_alternatives;}

@members {
List log = new List();
}

start : a* EOF;
a
  : label=subrule {log.add($label.text);} #One
  | label='y' {log.add($label.text);} #Two
  ;
subrule : 'x';
WS : (' '|'\n') -> skip ;