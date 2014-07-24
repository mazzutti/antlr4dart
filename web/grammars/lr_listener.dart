// Generated from LR.g by antlr4dart
part of lr;

/// This abstract class defines a complete listener for a parse tree produced by
/// [LRParser].
abstract class LRListener extends ParseTreeListener {
  /// Enter a parse tree produced by [LRParser.e].
  /// [context] is the parse tree.
   void enterE(EContext context);

  /// Exit a parse tree produced by [LRParser.e].
  /// [context] is the parse tree.
  void exitE(EContext context);

  /// Enter a parse tree produced by [LRParser.s].
  /// [context] is the parse tree.
   void enterS(SContext context);

  /// Exit a parse tree produced by [LRParser.s].
  /// [context] is the parse tree.
  void exitS(SContext context);
}