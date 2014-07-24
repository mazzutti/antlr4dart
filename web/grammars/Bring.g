grammar Bring;

options {
  language = Dart;
}

@header{part of bring;}

import BringImport;
s : a ;
WS : (' '|'\n') -> skip ;