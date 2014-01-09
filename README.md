**Fully-featured ANTLR4 parser/lexer generation for Dart**

#### DESCRIPTION

ANTLR (ANother Tool for Language Recognition) is a tool that is used to generate
code for performing a variety of language recognition tasks: lexing, parsing,
abstract syntax tree construction and manipulation, tree structure recognition,
and input translation. The tool operates similarly to other parser generators,
taking in a grammar specification written in the special ANTLR metalanguage and
producing source code that implements the recognition functionality.

While the tool itself is implemented in Java, it has an extensible design that
allows for code generation in other programming languages. To implement an
ANTLR language target, a developer may supply a set of templates written in the
StringTemplate ([http://www.stringtemplate.org](http://www.stringtemplate.org)) language.

This dart tool is a complete implementation of the majority of features
ANTLR provides for other language targets, such as Java and CSharp. It contains:

* An extended version of the latest ANTLR program, bundling all necessary
  Java code and templates for producing fully featured language recognition
  in Dart code;

* A antlr4dart runtime library that collects classes used throughout the code that
  ANTLR generates;
   
* An antlr4 jar with dart support, used to to generate code for performing a 
  variety of language recognition tasks: lexing, parsing, abstract syntax tree 
  construction and manipulation, tree structure recognition, and input translation.


#### HOW TO BUILD
In order to use antlr4dart you have to create a custom antlr4 build. In contrast to
other languages code generation for Dart isn't part of the standard antlr4 code
repository yet.


*Get antlr4 and build it* 
  * Clone it from github

	```bash
	$> git clone https://github.com/antlr/antlr4.git
	```

  * Prepare build environment 

  Build relies on ant. If not installed yet, you have to install it first. On Ubuntu do
	```bash
	$> sudo apt-get install ant
	```

  * Build antlr

	```bash
	$> cd antlr4 
	$> ant
	```

*Create symbolic links to the files supplied by antlr4dart*

```bash
$> cd antlr4

# /path/to/antlr4dart is the full path to your local antlr4dart repository 
$> ln -s /path/to/antlr4dart/bin/Dart tool/resources/org/antlr/v4/tool/templates/codegen/Dart  
$> ln -s /path/to/antlr4dart/bin/DartTarget.java tool/src/org/antlr/v4/codegen/DartTarget.java
```

*Build again*

```bash
$> cd antlr4 
$> ant
```    

This should create the file `dist/target/antlr-{version}-complete.jar` which includes support for
Dart code generation.

### TEST IT
  * Create a trivial grammar in the file `trivial.g`

	```antlr
	lexer grammar trivial;
	options {
	  language = Dart;
	}
	ZERO: '0';
	```

  * Run antlr

Make sure that the antlr jar you've built in the previous steps is on the classpath.
 
```bash
$> java org.antlr.v4.Tool trivial.g
```
This should create the files `trivial.dart` and `trivial.tokens`.

#### USAGE

1. Write an ANTLR grammar specification for a language

	```antlr
	grammar SomeLanguage;
	
	options {
	  language = Dart;    // <- this option must be set to Dart
	  output   = AST;
	}
	
	top: expr ( ',' expr )*
	   ;
	
	// and so on...
	```

2. Run the ANTLR tool with the `java -jar path/to/antlr-{version}-complete.jar` command to 
   generate output:

	```bash
	$> java -jar path/to/antlr-{version}-complete.jar [OPTIONS] lang.g
	# creates:
	#   langParser.dart
	#   langLexer.dart
	#   lang.tokens
	```

   alternatively, you can do:

	```bash 
	$> export CLASSPATH=path/to/antlr-{version}-complete.jar:$CLASSPATH
	
	$> java org.antlr.v4.Tool [OPTIONS] $grammar
	```

   NOTES: Probably you will need to edit the `@header{}` section in your grammar. 
   
	   Use 
		```antlr
		@header {
		  library your_library_name;
		  import "package:antlr4dart/antlr4dart.dart";
		}
		```
	   if the parser and lexer should be generated in a dedicated Dart library. 
	
	   Use 
		```antlr
		@header {
		  part of your_library_name;
		  // no import statement here, add it to the parent library file 
		}
		```
	   if the  parser and lexer should be generated as part of another library.
	
	   More samples can be found in the test folder.

3. Make sure your `pubspec.yaml` includes a dependency to `antlr4dart`

   `antlr4dart` is hosted on pub.dartlang.org, the most simple dependency statement is therefore
	```yaml
	dependencies:
	  antlr4dart: any
	```
   
   Alternatively, you can add a dependency to dartlr's GitHub repository: 
	```yaml
	dependencies:
	  dartlr: 
	    git: git@github.com:tiagomazzutti/antlr4dart-runtime.git 
	```
	
   Or, alternatively, if you made some changes to the `antlr4dart` runtime library, you can 
   that by config the local `path`:
    ```yaml
	dependencies:
	  antlr4dart: 
	    path: antlr4dart-runtime
	```

4. Try out the results directly:

	```dart
	import "package:dartlr/dartlr.dart";
	import "SomeLanguageLexer.dart";
	import "SomeLanguageParser.dart";
	
	main() {
	  
	  var input = 'some text input ...';
	  var source = new StringSource(input);
	  var lexer = new SomeLanguageLexer(source);
	  var tokens = new CommonTokenStream(lexer);
	  var parser = new SomeLanguageParser(tokens);
	
	  var result = parser.<entry_rule>();    
	  // ...
	
	}
	```

#### RUNNING THE TESTS

Make sure that the antlr jar you've built in the previous steps is on the classpath. If not, add it:
```bash 
$> export CLASSPATH=path/to/antlr-{version}-complete.jar:$CLASSPATH
```

Go to de `test/grammars` folders from terminal and process the grammars files `*.g` executing the
`process-grammars.sh` as folows:

```bash
$> cd antrl4dart/test/grammars
$> ./process-grammars.sh [file1.g file2.g ...]
```
If no file is passed, all grammar files will be processed.

Run the all tests by executing: 

```bash
$> cd antrl4dart/test/
$> dart run_tests.dart
```


