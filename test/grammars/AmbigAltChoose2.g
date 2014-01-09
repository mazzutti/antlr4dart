parser grammar AmbigAltChoose2;

options {
language = Dart;
}

@header{part of atn_interpreter_test;}

a : (A B | A B) C ;