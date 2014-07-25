grammar Trace;
options {
  language = Dart;
}

@header{part of trace_;}

a: '<' (INT '+' b | c) '>';
b: c ('+' c)*;
c: INT;

INT: ('0'..'9')+;
WS: (' ' | '\n' | '\t')+ -> channel(HIDDEN);
