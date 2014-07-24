parser grammar DelegatorImport10_1;

@members {
List log = new List();
}

a : b {log.add("S.a");} ;
b : 'b' ;