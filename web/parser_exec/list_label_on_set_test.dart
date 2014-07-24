library list_label_on_set;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/list_label_on_set_parser.dart";
part "../grammars/list_label_on_set_lexer.dart";

main() {
  test("testListLabelOnSet", () {
    var csource = new StringSource("abc 34;");
    var lexer = new ListLabelOnSetLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new ListLabelOnSetParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
