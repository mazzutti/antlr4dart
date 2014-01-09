// Generated from Expressions.g by ANTLR 4.x
part of expressions;
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class ExpressionsLexer extends Lexer {
	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__4=1, T__3=2, T__2=3, T__1=4, T__0=5, ID=6, INT=7, WS=8;
	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] tokenNames = {
		"<INVALID>",
		"'this'", "'.'", "'+'", "'-'", "'*'", "ID", "INT", "WS"
	};
	public static final String[] ruleNames = {
		"T__4", "T__3", "T__2", "T__1", "T__0", "ID", "INT", "WS"
	};


	public ExpressionsLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Expressions.g"; }

	@Override
	public String[] getTokenNames() { return tokenNames; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	@Override
	public void action(RuleContext _localctx, int ruleIndex, int actionIndex) {
		switch (ruleIndex) {
		case 7: WS_action((RuleContext)_localctx, actionIndex); break;
		}
	}
	private void WS_action(RuleContext _localctx, int actionIndex) {
		switch (actionIndex) {
		case 0: skip();  break;
		}
	}

	public static final String _serializedATN =
		"\3\u0f63\ub3d0\u10be\u9b29\u438c\u6c08\uc57f\u1da2\2\n.\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\3\2\3\2\3\2\3\2"+
		"\3\2\3\3\3\3\3\4\3\4\3\5\3\5\3\6\3\6\3\7\6\7\"\n\7\r\7\16\7#\3\b\6\b\'"+
		"\n\b\r\b\16\b(\3\t\3\t\3\t\3\t\2\2\n\3\3\1\5\4\1\7\5\1\t\6\1\13\7\1\r"+
		"\b\1\17\t\1\21\n\1\3\2\3\4\2\f\f\"\"/\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2"+
		"\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2\3"+
		"\23\3\2\2\2\5\30\3\2\2\2\7\32\3\2\2\2\t\34\3\2\2\2\13\36\3\2\2\2\r!\3"+
		"\2\2\2\17&\3\2\2\2\21*\3\2\2\2\23\24\7v\2\2\24\25\7j\2\2\25\26\7k\2\2"+
		"\26\27\7u\2\2\27\4\3\2\2\2\30\31\7\60\2\2\31\6\3\2\2\2\32\33\7-\2\2\33"+
		"\b\3\2\2\2\34\35\7/\2\2\35\n\3\2\2\2\36\37\7,\2\2\37\f\3\2\2\2 \"\4c|"+
		"\2! \3\2\2\2\"#\3\2\2\2#!\3\2\2\2#$\3\2\2\2$\16\3\2\2\2%\'\4\62;\2&%\3"+
		"\2\2\2\'(\3\2\2\2(&\3\2\2\2()\3\2\2\2)\20\3\2\2\2*+\t\2\2\2+,\3\2\2\2"+
		",-\b\t\2\2-\22\3\2\2\2\5\2#(";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}