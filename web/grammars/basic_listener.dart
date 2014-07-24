// Generated from Basic.g by antlr4dart
part of basic;

/// This abstract class defines a complete listener for a parse tree produced by
/// [BasicParser].
abstract class BasicListener extends ParseTreeListener {
  /// Enter a parse tree produced by [BasicParser.s].
  /// [context] is the parse tree.
   void enterS(SContext context);

  /// Exit a parse tree produced by [BasicParser.s].
  /// [context] is the parse tree.
  void exitS(SContext context);

  /// Enter a parse tree produced by [BasicParser.a].
  /// [context] is the parse tree.
   void enterA(AContext context);

  /// Exit a parse tree produced by [BasicParser.a].
  /// [context] is the parse tree.
  void exitA(AContext context);
}