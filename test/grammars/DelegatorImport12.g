lexer grammar DelegatorImport12;

@members {
List log = new List();
}

A : 'a' {log.add("S.A");} ;
B : 'b' {log.add("S.B");} ;