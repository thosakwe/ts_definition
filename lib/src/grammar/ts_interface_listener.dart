// Generated from TsInterface.g4 by antlr4dart

part of ts_definition.src.grammar;


/// This abstract class defines a complete listener for a parse tree produced by
/// [TsInterfaceParser].
abstract class TsInterfaceListener extends ParseTreeListener {
  /// Enter a parse tree produced by [TsInterfaceParser.UnionType].
  /// [context] is the parse tree.
   void enterUnionType(UnionTypeContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.UnionType].
  /// [context] is the parse tree.
  void exitUnionType(UnionTypeContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.namespaceField].
  /// [context] is the parse tree.
   void enterNamespaceField(NamespaceFieldContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.namespaceField].
  /// [context] is the parse tree.
  void exitNamespaceField(NamespaceFieldContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.BoolExpr].
  /// [context] is the parse tree.
   void enterBoolExpr(BoolExprContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.BoolExpr].
  /// [context] is the parse tree.
  void exitBoolExpr(BoolExprContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.StringExpr].
  /// [context] is the parse tree.
   void enterStringExpr(StringExprContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.StringExpr].
  /// [context] is the parse tree.
  void exitStringExpr(StringExprContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.keyTypePair].
  /// [context] is the parse tree.
   void enterKeyTypePair(KeyTypePairContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.keyTypePair].
  /// [context] is the parse tree.
  void exitKeyTypePair(KeyTypePairContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.exportNamespaceDecl].
  /// [context] is the parse tree.
   void enterExportNamespaceDecl(ExportNamespaceDeclContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.exportNamespaceDecl].
  /// [context] is the parse tree.
  void exitExportNamespaceDecl(ExportNamespaceDeclContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.IdExpr].
  /// [context] is the parse tree.
   void enterIdExpr(IdExprContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.IdExpr].
  /// [context] is the parse tree.
  void exitIdExpr(IdExprContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.NullExpr].
  /// [context] is the parse tree.
   void enterNullExpr(NullExprContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.NullExpr].
  /// [context] is the parse tree.
  void exitNullExpr(NullExprContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.ArrayType].
  /// [context] is the parse tree.
   void enterArrayType(ArrayTypeContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.ArrayType].
  /// [context] is the parse tree.
  void exitArrayType(ArrayTypeContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.SimpleType].
  /// [context] is the parse tree.
   void enterSimpleType(SimpleTypeContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.SimpleType].
  /// [context] is the parse tree.
  void exitSimpleType(SimpleTypeContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.ObjectType].
  /// [context] is the parse tree.
   void enterObjectType(ObjectTypeContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.ObjectType].
  /// [context] is the parse tree.
  void exitObjectType(ObjectTypeContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.ArrayExpr].
  /// [context] is the parse tree.
   void enterArrayExpr(ArrayExprContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.ArrayExpr].
  /// [context] is the parse tree.
  void exitArrayExpr(ArrayExprContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.compilationUnit].
  /// [context] is the parse tree.
   void enterCompilationUnit(CompilationUnitContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.compilationUnit].
  /// [context] is the parse tree.
  void exitCompilationUnit(CompilationUnitContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.NumExpr].
  /// [context] is the parse tree.
   void enterNumExpr(NumExprContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.NumExpr].
  /// [context] is the parse tree.
  void exitNumExpr(NumExprContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.interfaceField].
  /// [context] is the parse tree.
   void enterInterfaceField(InterfaceFieldContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.interfaceField].
  /// [context] is the parse tree.
  void exitInterfaceField(InterfaceFieldContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.interfaceDecl].
  /// [context] is the parse tree.
   void enterInterfaceDecl(InterfaceDeclContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.interfaceDecl].
  /// [context] is the parse tree.
  void exitInterfaceDecl(InterfaceDeclContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.comment].
  /// [context] is the parse tree.
   void enterComment(CommentContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.comment].
  /// [context] is the parse tree.
  void exitComment(CommentContext context);

  /// Enter a parse tree produced by [TsInterfaceParser.ParenthesizedExpr].
  /// [context] is the parse tree.
   void enterParenthesizedExpr(ParenthesizedExprContext context);

  /// Exit a parse tree produced by [TsInterfaceParser.ParenthesizedExpr].
  /// [context] is the parse tree.
  void exitParenthesizedExpr(ParenthesizedExprContext context);
}