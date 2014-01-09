#!/bin/bash
#
# processes the test lexers and grammers and generates
# the required .dart and .tokens files. If No grammar name is passed
# processes all grammars in grammars directory.
#

if [ $1 ]; then
  GRAMMARS=$@
else
  GRAMMARS=`ls *.g` 
fi

for grammar in $GRAMMARS
do
  if [ `echo "$grammar" | grep -c Import` -ne 0 ]; then
    echo "skiping    => '$grammar' ..."
    continue
  elif [ "$grammar" == "Trace.g" ] || \
       [ "$grammar" == "Basic.g" ] || \
       [ "$grammar" == "TokenGetters.g" ] || \
       [ "$grammar" == "RuleGetters.g" ] || \
       [ "$grammar" == "LR.g" ] || \
       [ "$grammar" == "LRWithLabels.g" ]; then
    echo "processing => '$grammar' - with listener enabled ..."
    java org.antlr.v4.Tool $grammar -Dlanguage=Dart
  else 
    echo "processing => '$grammar' ..."
    java org.antlr.v4.Tool $grammar -Dlanguage=Dart -no-listener 
  fi
done


