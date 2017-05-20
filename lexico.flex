package com.semv.practica1.lexer;
import com.semv.practica1.syntactic.sym;
import com.semv.practica1.symbols_table.Element;
import java_cup.runtime.Symbol;

%%

%public
%class AnalizadorLexico

%line
%column

%cup

LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]
WhiteSpace     = {LineTerminator} | [ \t\f]

TraditionalComment   = "/*" [^*] ~"*/" | "/*" "*"+ "/"
EndOfLineComment     = "//" {InputCharacter}* {LineTerminator}
Comment = {TraditionalComment} | {EndOfLineComment}

%%

"void"    { System.out.println(yytext()); return new Element(yytext(), yyline, yycolumn, sym.tvoid);	 }
"return"    { System.out.println(yytext()); return new Symbol(sym.treturn);	 }
"("    { System.out.println(yytext()); return new Symbol(sym.l_par);	 }
")"    { System.out.println(yytext()); return new Symbol(sym.r_par);	 }
"["    { System.out.println(yytext()); return new Symbol(sym.l_bracket);	 }
"]"    { System.out.println(yytext()); return new Symbol(sym.r_bracket);	 }
"{"    { System.out.println(yytext()); return new Symbol(sym.l_brace);	 }
"}"    { System.out.println(yytext()); return new Symbol(sym.r_brace);	 }
","    { System.out.println(yytext()); return new Symbol(sym.comma);	 }
"int"    { System.out.println(yytext()); return new Element(yytext(), yyline, yycolumn, sym.tint);	 }
"float"    { System.out.println(yytext()); return new Element(yytext(), yyline, yycolumn, sym.tfloat);	 }
"bool"    { System.out.println(yytext()); return new Element(yytext(), yyline, yycolumn, sym.tbool);	 }
"true"    { System.out.println(yytext()); return new Element(yytext(), yyline, yycolumn, sym.constbool);	 }
"false"    { System.out.println(yytext()); return new Element(yytext(), yyline, yycolumn, sym.constbool);	 }
";"    { System.out.println(yytext()); return new Symbol(sym.semicolon);	 }
"="    { System.out.println(yytext()); return new Symbol(sym.assig);	 }
"+"    { System.out.println(yytext()); return new Symbol(sym.add);	 }
"-"    { System.out.println(yytext()); return new Symbol(sym.sub);	 }
"*"    { System.out.println(yytext()); return new Symbol(sym.mul);	 }
"/"    { System.out.println(yytext()); return new Symbol(sym.div);	 }
"if"    { System.out.println(yytext()); return new Symbol(sym.tif);	 }
"then"    { System.out.println(yytext()); return new Symbol(sym.tthen);	 }
"else"    { System.out.println(yytext()); return new Symbol(sym.telse);	 }
"for"    { System.out.println(yytext()); return new Symbol(sym.tfor);	 }
"while"    { System.out.println(yytext()); return new Symbol(sym.twhile);	 }
"do"    { System.out.println(yytext()); return new Symbol(sym.tdo);	 }
"until"    { System.out.println(yytext()); return new Symbol(sym.tuntil);	 }
"not"    { System.out.println(yytext()); return new Symbol(sym.tnot);	 }
"and"    { System.out.println(yytext()); return new Symbol(sym.tand);	 }
"or"    { System.out.println(yytext()); return new Symbol(sym.tor);	 }
"=="    { System.out.println(yytext()); return new Symbol(sym.equals);	 }
"<"    { System.out.println(yytext()); return new Symbol(sym.less);	 }
">"    { System.out.println(yytext()); return new Symbol(sym.greater);	 }
">="    { System.out.println(yytext()); return new Symbol(sym.greaterequal);	 }
"<="    { System.out.println(yytext()); return new Symbol(sym.lessequal);	 }
"#include"	{ System.out.println(yytext()); return new Symbol(sym.include);	 }
[a-zA-Z0-9_]+ ".h" { System.out.println(yytext()); return new Element(yytext(), yyline, yycolumn, sym.hfile);	 }

[a-zA-Z] [a-zA-Z0-9_]*	{ System.out.println(yytext()); return new Element(yytext(), yyline, yycolumn, sym.tid);	 }
("-")? [0-9]+ { System.out.println(yytext()); return new Element(yytext(), yyline, yycolumn, sym.constint);	 }
("-")? [0-9]+ "." [0-9]+ { System.out.println(yytext()); return new Element(yytext(), yyline, yycolumn, sym.constfloat);	 }

/* whitespace */
{WhiteSpace}    { /* ignore */ }

/* comments */
{Comment}   { /* ignore */ }

/* error fallback */
[^]     { throw new Error("Lexical Error (Line " + yyline + ", Column " + yycolumn + ") unkown character: " + yytext()); }