parser grammar HeadersImport;

@members{
List log = new List();
}

a : B {log.add("S.a");} ;