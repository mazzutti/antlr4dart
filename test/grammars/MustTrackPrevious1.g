parser grammar MustTrackPrevious1;

options {
language = Dart;
}

@header{part of atn_interpreter_test;}

a : (A | A B) EOF;