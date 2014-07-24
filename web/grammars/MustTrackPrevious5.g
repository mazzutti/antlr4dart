parser grammar MustTrackPrevious5;

options {
language = Dart;
}

@header{library atn_interpreter_test.must_track_previous5;

import "package:antlr4dart/antlr4dart.dart";}

a : (A B | A | A B C) EOF;