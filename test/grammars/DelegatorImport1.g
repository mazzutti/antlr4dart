parser grammar DelegatorImport1;

@members {
List log = new List();
}
 
 a : B {log.add("S.a");} ;