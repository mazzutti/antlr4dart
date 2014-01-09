grammar ImpLexer;

options{
language = Dart;
}

@header{part of imp_lexer;}

import ImpLexerImport;

program : 'test' 'test' ;
WS : (UNICODE_CLASS_Zs)+ -> skip;