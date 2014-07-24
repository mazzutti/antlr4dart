lexer grammar PositionSensitive;

options {
language = Dart;
}

@header{part of position_sensitive;}

@members{
List log = new List();
}

WORD1 : ID1+ {log.add(text);} ;
WORD2 : ID2+ {log.add(text);} ;
fragment ID1 : {charPositionInLine < 2}? [a-zA-Z];
fragment ID2 : {charPositionInLine >= 2}? [a-zA-Z];
WS : (' '|'\n') -> skip;