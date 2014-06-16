library test_error_listener;

import 'package:antlr4dart/antlr4dart.dart';

class TestErrorListener extends ErrorListener {

  final List<String> errorMessages = new List<String>();
  final bool exactOnly;

  TestErrorListener([this.exactOnly = true]);

  void syntaxError(Recognizer recognizer,
                   Object offendingSymbol,
                   int line,
                   int charPositionInLine,
                   String msg,
                   RecognitionException e) {
    errorMessages.add(msg);
  }

  void reportAmbiguity(Parser recognizer,
                       Dfa dfa,
                       int startIndex,
                       int stopIndex,
                       bool exact,
                       BitSet ambigAlts,
                       AtnConfigSet configs) {
    if (exactOnly && !exact) return;
    String rule = recognizer.ruleNames[dfa.atnStartState.ruleIndex];
    String input = recognizer.inputSource.getTextIn(Interval.of(startIndex, stopIndex));
    BitSet conflictingAlts = _getConflictingAlts(ambigAlts, configs);
    errorMessages.add("reportAmbiguity d=${dfa.decision} ($rule): ambigAlts=$conflictingAlts, input='$input'");
  }

  void reportAttemptingFullContext(Parser recognizer,
                                   Dfa dfa,
                                   int startIndex,
                                   int stopIndex,
                                   BitSet conflictingAlts,
                                   AtnConfigSet configs) {
    String rule = recognizer.ruleNames[dfa.atnStartState.ruleIndex];
    String input = recognizer.inputSource.getTextIn(Interval.of(startIndex, stopIndex));
    errorMessages.add("reportAttemptingFullContext d=${dfa.decision} ($rule), input='$input'");
  }

  void reportContextSensitivity(Parser recognizer,
                                Dfa dfa,
                                int startIndex,
                                int stopIndex,
                                int prediction,
                                AtnConfigSet configs) {
    String rule = recognizer.ruleNames[dfa.atnStartState.ruleIndex];
    String input = recognizer.inputSource.getTextIn(Interval.of(startIndex, stopIndex));
    errorMessages.add("reportContextSensitivity d=${dfa.decision} ($rule), input='$input'");
  }

  BitSet _getConflictingAlts(BitSet reportedAlts, AtnConfigSet configs) {
    if (reportedAlts != null) return reportedAlts;
    BitSet result = new BitSet();
    for (AtnConfig config in configs) {
      result.set(config.alt, true);
    }
    return result;
  }
}
