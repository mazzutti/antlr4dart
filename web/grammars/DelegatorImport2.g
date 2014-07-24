parser grammar DelegatorImport2;

@members {
List log = new List();
}

a[int x] returns [int y] : B {log.add("S.a"); $y=1000;} ;
 