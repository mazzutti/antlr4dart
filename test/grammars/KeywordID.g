lexer grammar KeywordID;

options {
language = Dart;
}

@header {part of keyword_id;}

@members{
List log = new List();
}

KEND : 'end' ; // has priority
ID : 'a'..'z'+ ;
WS : (' '|'\n')+ ;