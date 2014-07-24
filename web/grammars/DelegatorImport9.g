parser grammar DelegatorImport9;

@members {
List log = new List();
}

type : 'int' ;
decl : type ID ';'
     | type ID init ';' {log.add("DelegatorImport9: \${$text}");}
     ;
init : '=' INT ;