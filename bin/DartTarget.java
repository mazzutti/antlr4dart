/*
 * [The "BSD license"]
 *  Copyright (c) 2012 Terence Parr
 *  Copyright (c) 2012 Sam Harwell
 *  Copyright (c) 2014 Tiago Mazzutti
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *  1. Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *  2. Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *  3. The name of the author may not be used to endorse or promote products
 *     derived from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 *  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 *  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 *  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 *  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 *  THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

package org.antlr.v4.codegen;

import org.antlr.v4.Tool;
import org.antlr.v4.codegen.model.Lexer;
import org.antlr.v4.codegen.model.Parser;
import org.antlr.v4.tool.Grammar;
import org.antlr.v4.tool.ast.GrammarAST;
import org.stringtemplate.v4.ST;
import org.stringtemplate.v4.ST.AttributeList;
import org.stringtemplate.v4.STGroup;
import org.stringtemplate.v4.StringRenderer;
import org.stringtemplate.v4.misc.Aggregate;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;


public class DartTarget extends Target {

	protected static final String[] dartKeywords = {
		"assert", "break", "case", "catch", "class", "const", "continue", "default",
        "do", "else", "enum", "extends", "false", "final", "finally", "for", "if",
        "in", "is", "new", "null", "rethrow", "return", "super", "switch", "this", "throw",
        "true", "try", "var", "void", "while", "with", "abstract", "as", "dynamic", "export",
        "external", "factory", "get", "implements", "import", "library", "operator", "part",
        "set", "static", "typedef"
	};

	/** Avoid grammar symbols in this set to prevent conflicts in gen'd code. */
	protected final Set<String> badWords = new HashSet<String>();

	public DartTarget(CodeGenerator gen) {
		super(gen, "Dart");
	}

	public Set<String> getBadWords() {
		if (badWords.isEmpty()) {
			addBadWords();
		}

		return badWords;
	}

	protected void addBadWords() {
		badWords.addAll(Arrays.asList(dartKeywords));
		badWords.add("rule");
		badWords.add("parserRule");
	}


	@Override
	public String getTargetStringLiteralFromANTLRStringLiteral(CodeGenerator generator,
															   String literal, 
															   boolean addQuotes) {
		StringBuilder sb = new StringBuilder();
		String is = literal;

		if ( addQuotes ) sb.append('"');

		for (int i = 1; i < is.length() -1; i++) {
			if  (is.charAt(i) == '\\') {
				switch (is.charAt(i+1)) {
					case    '"':
					case    'n':
					case    'r':
					case    't':
					case    'b':
					case    'f':
					case    '\\':
						// Pass the escape through
						sb.append('\\');
						break;

					case    'u':    // Assume unnnn
						sb.append('\\');
						sb.append('\\');
						break;

					default:
						// Remove the escape by virtue of not adding it here
						// Thus \' becomes ' and so on
						break;
				}

				// Go past the \ character
				i++;
			} else {
				if (is.charAt(i) == '"') {
					sb.append('\\');
				}
			}
			// Add in the next character, which may have been escaped
			sb.append(is.charAt(i));
		}

		if ( addQuotes ) sb.append('"');

		return sb.toString();
	}

	@Override
	public String encodeIntAsCharEscape(int v) {
		if (v < Character.MIN_VALUE || v > Character.MAX_VALUE) {
			throw new IllegalArgumentException(String.format("Cannot encode the specified value: %d", v));
		}

		if (v >= 0 && v <= 255) {
			return "\\x"+ Integer.toHexString(v|0x100).substring(1,3);
		}

		String hex = Integer.toHexString(v|0x10000).substring(1,5);
		return "\\u"+hex;
	}

	@Override
	public int getSerializedATNSegmentLimit() {
		// 65535 is the class file format byte limit for a UTF-8 encoded string literal
		// 3 is the maximum number of bytes it takes to encode a value in the range 0-0xFFFF
		return 65535 / 3;
	}

	@Override
	protected boolean visibleGrammarSymbolCausesIssueInGeneratedCode(GrammarAST idNode) {
		return getBadWords().contains(idNode.getText());
	}

	@Override
	protected STGroup loadTemplates() {
		STGroup result = super.loadTemplates();
		result.registerRenderer(String.class, new DartStringRenderer(), true);
		return result;
	}

	protected static class DartStringRenderer extends StringRenderer {

		@Override
		public String toString(Object o, String formatString, Locale locale) {
			if ("dart-escape".equals(formatString)) {
				// 5C is the hex code for the \ itself
				return ((String)o).replace("\\u", "\\u005Cu");
			}
			return super.toString(o, formatString, locale);
		}

	}
	
	@Override
	protected void genFile(Grammar g,
						   ST outputFileST,
						   String fileName) {
		AltLabelCtxsReWriter.apply(outputFileST);
		TokenNamesReWriter.apply(outputFileST);
		getCodeGenerator().write(outputFileST, dartfyFileName(fileName));
	}
	
	private String dartfyFileName(String name) {
		if(name.endsWith(".tokens")) return name;
		String regex = "(?<!(^|[A-Z]))(?=[A-Z])|(?<!^)(?=[A-Z][a-z])";
	    String[] parts = name.split(regex);
		String result = parts[0];
		for(int i = 1; i < parts.length; i++) {
			result += "_" + parts[i];
		}
		return result.toLowerCase();
	}
	
	private static class AltLabelCtxsReWriter implements STVisitor {
		static void apply(ST outputFileST) {
			AltLabelCtxsReWriter rewriter = new AltLabelCtxsReWriter();
			STWalker walker = new STWalker(rewriter);
			walker.walk(outputFileST);
		}
		
		private Set<ST> visited = new HashSet<ST>();

		private AltLabelCtxsReWriter() {}

		@SuppressWarnings("unchecked")
		@Override
		public void visit(ST st) {
			if (st == null) return;
			if (visited.contains(st)) return;
			visited.add(st);
			String name = st.getName();
			if (!"/LeftRecursiveRuleFunction".equals(name) 
				&& !"/RuleFunction".equals(name)) return;
			HashMap<String, ST> altLabelCtxs = (HashMap<String, ST>) st.getAttribute("altLabelCtxs");
			if (altLabelCtxs != null) {
				for (ST altLabelCtx: altLabelCtxs.values()) {
					altLabelCtx.add("currentRule", st.getAttribute("currentRule"));
				}
			}
		}
	}
	
	private static class TokenNamesReWriter implements STVisitor {
		static void apply(ST outputFileST) {
			TokenNamesReWriter rewriter = new TokenNamesReWriter();
			STWalker walker = new STWalker(rewriter);
			walker.walk(outputFileST);
		}

		private Set<ST> visited = new HashSet<ST>();
  
		private TokenNamesReWriter(){}

		@Override
		public void visit(ST st) {
			if (st == null) return;
			if (visited.contains(st)) return;
		    visited.add(st);
			if ((!"/Lexer".equals(st.getName())) 
				&& (!"/Parser".equals(st.getName()))) return;
		    String[] tokenNames = st.getName().equals("/Lexer") ? 
				((Lexer) st.getAttribute("lexer")).tokenNames :
				((Parser) st.getAttribute("parser")).tokenNames;
			for(int i = 0; i < tokenNames.length; i++) {
				if (tokenNames[i] != null) {
					if (tokenNames[i].contains("$")) {
						tokenNames[i] = "r\"" + tokenNames[i].substring(1, tokenNames[i].length() - 1) + "\"";
					}
				}
			}
		}
	}
	
	private static interface STVisitor {
		void visit(ST st);
	}

	private static class STWalker {
		private final STVisitor visitor;
    
		public STWalker(STVisitor visitor) {
			this.visitor = visitor;
		}

		protected void walkListST(List<?> l) {
			if (l == null) return;
			for (Object st : l) {
				if (l instanceof ST) walkST((ST)st);
			}
		}

		protected void walkST(ST st) {
			visitor.visit(st);
			if (st.getAttributes() == null) return;
			for (String key : st.getAttributes().keySet()) walk(st.getAttribute(key));
		}

		protected void walkAggregate(Aggregate a) {
			for (Object v : a.properties.values()) walk(v);
		}

		protected void walkAttributeList(AttributeList l) {
			for (Object v : l) walk(v);
		}

		@SuppressWarnings("unchecked")
		public void walk(Object v) {
			if (v == null) return;
			if (v instanceof ST) {
				walkST((ST) v);
			} else if (v instanceof AttributeList) {
				walkAttributeList((AttributeList) v);
			} else if (v instanceof Aggregate) {
				walkAggregate((Aggregate) v);
			} else if (v instanceof List<?>) {
				walkListST((List<ST>)v);
			}
		}
	}

	
	/**
	 * just for debugging and analysting ST trees
	 */
	static class STDumper {
	    private final ST st;
	
	    public STDumper(ST st) {
	    	this.st = st;
	    }
	
	    public void dump() {
	    	dump(0, st);
	    }

	    protected void dump(int level, Aggregate aggregate) {
	    	if (aggregate.properties == null)
	    		return;
	    	for (String key : aggregate.properties.keySet()) {
	    		Object value = aggregate.get(key);
	    		if (value == null) {
	    			log(level, String.format("aggregate key:%s, value is null", key));
	    		} else if (value instanceof ST) {
	    			log(level, String.format("aggregate key: %s", key));
	    			dump(level + 1, (ST) value);
	    		} else if (value instanceof AttributeList) {
	    			log(level, String.format("aggregate key: %s", key));
	    			dump(level + 1, (AttributeList) value);
	    		} else {
	    			log(level, String.format("aggregate key: %s, type: %s, value: %s", key, value.getClass(), value));
	    		}
	    	}
	    }

	    protected void dump(int level, AttributeList l) {
	    	for (int i = 0; i < l.size(); i++) {
	    		Object attr = l.get(i);
	    		if (attr == null)
	    			continue;
	    		String name = String.format("AttributeList[%s]", i);
	    		if (attr instanceof String) {
	    			log(level + 1, String.format("attr %s: type: %s, value: %s", name, String.class, attr));
	    		} else if (attr instanceof ST) {
	    			dump(level + 1, (ST) attr);
	    		} else if (attr instanceof AttributeList) {
	    			dump(level + 1, (AttributeList) attr);
	    		} else if (attr instanceof Aggregate) {
	    			dump(level + 1, (Aggregate) attr);
	    		} else {
	    			log(level + 1, String.format("attr %s: type: %s, value: %s", name, attr.getClass(), attr.toString()));
	    		}

	    	}
	    }

	    protected void dump(int level, ST st) {
	    	log(level, String.format("ST: name=%s", st.getName()));
	    	Map<String, Object> atts = st.getAttributes();
	    	if (atts == null)
	    		return;
	    	for (String key : atts.keySet()) {
	    		Object attr = st.getAttribute(key);
	    		if (attr == null)
	    			continue;
	    		if (attr instanceof String) {
	    			log(level + 1, String.format("attr: name:%s, type: %s, value: %s", key, String.class, attr));
	    		} else if (attr instanceof ST) {
	    			dump(level + 1, (ST) attr);
	    		} else if (attr instanceof AttributeList) {
	    			log(level + 1, String.format("attr: name: %s -> AttributeList", key));
	    			dump(level + 1, (AttributeList) attr);
	    		} else if (attr instanceof Aggregate) {
	    			log(level + 1, String.format("attr: name: %s -> Aggregate", key));
	    			dump(level + 1, (Aggregate) attr);
	    		} else {
	    			log(level + 1, String.format("attr: name:%s, type: %s, value: %s", key, attr.getClass(), attr.toString()));
	    		}
	    	}
	    }

	    private void ident(int level) {
	    	for (int i = 0; i < level; i++)
	    		System.out.print("  ");
	    }

	    private void log(int level, String msg) {
	    	ident(level);
	    	System.out.println(msg);
	    }
	}

	@Override
	public String getVersion() {
		return Tool.VERSION;
	}
}
