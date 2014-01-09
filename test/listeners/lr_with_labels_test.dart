library lr_with_labels;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/lr_with_labels_parser.dart';
part '../grammars/lr_with_labels_lexer.dart';
part '../grammars/lr_with_labels_listener.dart';
part '../grammars/lr_with_labels_base_listener.dart';

main() {
  test("testLRWithLabels", () {
    var csource = new StringSource("1(2,3)");
    var lexer = new LRWithLabelsLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new LRWithLabelsParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["(e (e 1) ( (eList (e 2) , (e 3)) ))",
                    "1", "2", "3", "1 [13 6]"];
    expect(parser.log, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}

class LeafListener extends LRWithLabelsBaseListener {
  List log;
  LeafListener(this.log);
  void exitCall(LRWithLabelsParserCallContext ctx) {
    log.add("${ctx.getE().start.text} ${ctx.getEList()}");
  }
  void exitInt(LRWithLabelsParserIntContext ctx) {
    log.add(ctx.getINT().symbol.text);
  }
}
