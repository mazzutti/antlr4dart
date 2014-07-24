parser grammar DelegatorImport3;

@members {
List log = new List();
}

a : B {log.add("S.a");} ;
