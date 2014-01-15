library ambig_lr;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/ambig_lr_parser.dart';
part '../grammars/ambig_lr_lexer.dart';

main() {
  test("testAmbigLR1", () {
    var csource = new StringSource("1\n");
    var lexer = new AmbigLRLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AmbigLRParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.prog();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testAmbigLR2", () {
    var csource = new StringSource("a = 5\n");
    var lexer = new AmbigLRLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AmbigLRParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.prog();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testAmbigLR3", () {
    var csource = new StringSource("b = 6\n");
    var lexer = new AmbigLRLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AmbigLRParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.prog();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testAmbigLR4", () {
    var csource = new StringSource("a+b*2\n");
    var lexer = new AmbigLRLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AmbigLRParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.prog();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testAmbigLR5", () {
    var csource = new StringSource("(1+2)*3\n");
    var lexer = new AmbigLRLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AmbigLRParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.prog();
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}
