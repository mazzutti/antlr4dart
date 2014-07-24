// Generated from LRWithLabels.g by antlr4dart
part of lr_with_labels;

/// This abstract class defines a complete listener for a parse tree produced by
/// [LRWithLabelsParser].
abstract class LRWithLabelsListener extends ParseTreeListener {
  /// Enter a parse tree produced by [LRWithLabelsParser.eList].
  /// [context] is the parse tree.
   void enterEList(EListContext context);

  /// Exit a parse tree produced by [LRWithLabelsParser.eList].
  /// [context] is the parse tree.
  void exitEList(EListContext context);

  /// Enter a parse tree produced by [LRWithLabelsParser.s].
  /// [context] is the parse tree.
   void enterS(SContext context);

  /// Exit a parse tree produced by [LRWithLabelsParser.s].
  /// [context] is the parse tree.
  void exitS(SContext context);

  /// Enter a parse tree produced by [LRWithLabelsParser.Call].
  /// [context] is the parse tree.
   void enterCall(CallContext context);

  /// Exit a parse tree produced by [LRWithLabelsParser.Call].
  /// [context] is the parse tree.
  void exitCall(CallContext context);

  /// Enter a parse tree produced by [LRWithLabelsParser.Int].
  /// [context] is the parse tree.
   void enterInt(IntContext context);

  /// Exit a parse tree produced by [LRWithLabelsParser.Int].
  /// [context] is the parse tree.
  void exitInt(IntContext context);
}