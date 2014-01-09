lexer grammar BufferedSourceTest;

options {
  language = Dart;
}

@header{part of buffered_token_source_test;}

ID : 'a'..'z'+;
INT : '0'..'9'+;
SEMI : ';';
ASSIGN : '=';
PLUS : '+';
MULT : '*';
WS : ' '+;