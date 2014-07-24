library lr;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/lr_parser.dart';
part '../grammars/lr_lexer.dart';
part '../grammars/lr_listener.dart';
part '../grammars/lr_base_listener.dart';

main() {
  test("testLR", () {
    var csource = new StringSource("1+2*3");
    var lexer = new LRLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new LRParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["(e (e 1) + (e (e 2) * (e 3)))",
                    "1", "2", "3", "2 3 2", "1 2 1"];
    expect(parser.log, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}

class LeafListener extends LRBaseListener {
  List log;
  LeafListener(this.log);
  void exitE(EContext ctx) {
    if (ctx.childCount == 3) {
      log.add("${ctx.getE(0).start.text} "
        "${ctx.getE(1).start.text} ${ctx.getEs()[0].start.text}");
    }
    else log.add(ctx.getINT().symbol.text);
  }
}
