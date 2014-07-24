grammar Keyword;

options {
  language = Dart;
}

@header{part of keyword;}

@members {
List log = new List();
}

import KeywordImport;

a : A {log.add("M.a: \${$A}");} ;
A : 'abc' {log.add("M.A");} ;
WS : (' '|'\n') -> skip ;