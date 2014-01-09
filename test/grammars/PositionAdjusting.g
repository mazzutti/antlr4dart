lexer grammar PositionAdjusting;

options {
language = Dart;
}

@header {part of position_adjusting;}

@members {
Token nextToken() {
  if (interpreter is! _PositionAdjustingLexerAtnSimulator) {
    interpreter = new _PositionAdjustingLexerAtnSimulator(this, atn, interpreter.decisionToDfa, sharedContextCache);
  }
  return super.nextToken();
}

Token emit() {
  switch (type) {
  case TOKENS:
    _handleAcceptPositionForKeyword("tokens");
    break;
  case LABEL:
    _handleAcceptPositionForIdentifier();
    break;
  default:
    break;
  }
  return super.emit();
}

bool _handleAcceptPositionForIdentifier() {
  String tokenText = text;
  int identifierLength = 0;
  while (identifierLength < tokenText.length && _isIdentifierChar(tokenText[identifierLength])) {
    identifierLength++;
  }
  if (inputSource.index > tokenStartCharIndex + identifierLength) {
    int offset = identifierLength - 1;
    var _inter = interpreter;
    _inter.resetAcceptPosition(inputSource, tokenStartCharIndex + offset, tokenStartLine, tokenStartCharPositionInLine + offset);
    return true;
  }
  return false;
}

bool _handleAcceptPositionForKeyword(String keyword) {
  if (inputSource.index > tokenStartCharIndex + keyword.length) {
    int offset = keyword.length - 1;
    var _inter = interpreter;
    _inter.resetAcceptPosition(inputSource, tokenStartCharIndex + offset, tokenStartLine, tokenStartCharPositionInLine + offset);
    return true;
  }
  return false;
}

static bool _isIdentifierChar(String s) {
  return _isLetter(s) || _isDigit(s) || s == '_';
}

static bool _isDigit(String s) {
  int char = s.codeUnitAt(0);
  if (char >= 0x30 && char <= 0x39) return true;
  return false;
}

static bool _isLetter(String s) {
  int char = s.codeUnitAt(0);
  if (char >= 0x41 && char <= 0x7a) return true;
  return false;
}
}

ASSIGN : '=' ;
PLUS_ASSIGN : '+=' ;
LCURLY: '{';

// 'tokens' followed by '{'
TOKENS : 'tokens' IGNORED '{';

// IDENTIFIER followed by '+=' or '='
LABEL
  : IDENTIFIER IGNORED '+'? '='
  ;

IDENTIFIER
  : [a-zA-Z_] [a-zA-Z0-9_]*
  ;

fragment
IGNORED
  : [ \t\r\n]*
  ;

NEWLINE
  : [\r\n]+ -> skip
  ;

WS
  : [ \t]+ -> skip
  ;
