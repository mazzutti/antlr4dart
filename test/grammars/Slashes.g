lexer grammar Slashes;

options {
language = Dart;
}

@header {part of slashes;}

Backslash : '\\';
Slash : '/';
Vee : '\\/';
Wedge : '/\\';
WS : [ \\t] -> skip;