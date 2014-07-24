// Generated from Trace.g by antlr4dart
part of trace;

/// This abstract class defines a complete listener for a parse tree produced by
/// [TraceParser].
abstract class TraceListener extends ParseTreeListener {
  /// Enter a parse tree produced by [TraceParser.b].
  /// [context] is the parse tree.
   void enterB(BContext context);

  /// Exit a parse tree produced by [TraceParser.b].
  /// [context] is the parse tree.
  void exitB(BContext context);

  /// Enter a parse tree produced by [TraceParser.c].
  /// [context] is the parse tree.
   void enterC(CContext context);

  /// Exit a parse tree produced by [TraceParser.c].
  /// [context] is the parse tree.
  void exitC(CContext context);

  /// Enter a parse tree produced by [TraceParser.a].
  /// [context] is the parse tree.
   void enterA(AContext context);

  /// Exit a parse tree produced by [TraceParser.a].
  /// [context] is the parse tree.
  void exitA(AContext context);
}