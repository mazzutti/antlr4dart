parser grammar MustTrackPrevious2;

options {
language = Dart;
}

@header{part of atn_interpreter_test;}

a : A | A B | A B C ;