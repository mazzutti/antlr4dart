parser grammar DelegatorImport6_1;

@members {
List log = new List();
}

tokens { A, B, C }
x : A {log.add("S.x");} ;