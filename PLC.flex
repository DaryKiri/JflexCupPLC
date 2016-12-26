/* all sections are separated by %%, there are three sections */

/* user code */
import java_cup.runtime.*;

%%   
/* Options and declarations */

%cup 

/* use of line: yyline, use of column: yycolumn */
%line
%column

/* macros for the use in lexical rules */

%%      
/* lexical rules */

"+"    		                { return new Symbol(sym.MAS); }
"-"    		                { return new Symbol(sym.MENOS); }
"*"    		                { return new Symbol(sym.POR); }
"/"							{ return new Symbol(sym.DIV); }
"="    		                { return new Symbol(sym.IGUAL); }
"=="						{ return new Symbol(sym.EQUALS); }
"!="						{ return new Symbol(sym.DISTINTO); }
">"							{ return new Symbol(sym.MAYOR); }
"<"							{ return new Symbol(sym.MENOR); }
"("    		                { return new Symbol(sym.AP); }
")"							{ return new Symbol(sym.CP); }
"{"							{ return new Symbol(sym.APA); }
"}"							{ return new Symbol(sym.CPA); }
";"							{ return new Symbol(sym.PYC); }
"if"						{ return new Symbol(sym.IF); }
"else"						{ return new Symbol(sym.ELSE); }
"print"    		            { return new Symbol(sym.PRINT); }
0|[1-9][0-9]*				{ return new Symbol(sym.NUMERO, yytext() ); }
[a-zA-Z][a-zA-Z0-9]*		{ return new Symbol(sym.IDENT, yytext() ); }
[ \f\r\n\t]					{  }
[^]							{ System.err.println("Error on line: " + yyline + " column: " + yycolumn); System.exit(0);}   