grammar Actions;
options {
  language = Dart;
}

@header{part of actions;}

declaration returns [String name]
    :   functionHeader ';'
        {$name = $functionHeader.name;}
    ;

functionHeader returns [String name]
    :   type id=ID {$name = $id.text;}
    ;

type
    :   'int'   
    |   'char'  
    |   'void'
    ;

ID  :   ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

WS  :   (   ' '
        |   '\t'
        |   '\r'
        |   '\n'
        )+ -> channel(HIDDEN)
    ;    
