grammar SubrulePredict;
options {
  language = Dart;
}

@header{part of subrule_predict;}

a: 'BEGIN' b WS+ 'END';
b: ( WS+ 'A' )+;
WS: ' ';
