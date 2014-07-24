lexer grammar Indent;
 
options {
language = Dart;
}

@header{part of indent;}

@members{
List log = new List();
}

ID : [a-z]+ ;
INDENT : [ \t]+ {tokenStartCharPositionInLine == 0}? {log.add("INDENT");}  ;
NL     : '\n' ;
WS     : [ \t]+ ;