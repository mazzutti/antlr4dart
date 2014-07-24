grammar Finally;

options {
language=Dart;
}

@header{part of finally_block;}

@members {
List events = new List();
}

prog: ID {throw new Exception("quux");};
      catch [e] {events.add('catch');}
      finally {events.add('finally');}

ID  :   ('a'..'z')+
    ;

WS  :   (' '|'\n'|'\r')+ -> channel(HIDDEN)
    ;
