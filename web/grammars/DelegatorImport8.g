parser grammar DelegatorImport8;

@members {
List log = new List();
}

a : b {log.add("S.a");} ;
b : B ;