grammar TokenLabel;
options {
  language = Dart;
}

@header{part of token_label;}

@members {List xlog = new List();
}

a: t=A {xlog.add($t.text);
xlog.add($t.type);
xlog.add($t.line);
xlog.add($t.pos);
xlog.add($t.channel);
xlog.add($t.index);}
    ;

A: 'a'..'z';

WS  :
        (   ' '
        |   '\t'
        |  ( '\n'
            |	'\r\n'
            |	'\r'
            )
        )+ -> channel(HIDDEN)
    ;    

