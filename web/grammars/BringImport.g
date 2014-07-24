parser grammar BringImport;

@members {
List log = new List();
}

a : '=' 'a' {log.add("S.a");} ;