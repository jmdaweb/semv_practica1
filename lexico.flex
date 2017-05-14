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

"void"    { return new Element(yytext(), yyline, yycolumn, sym.tvoid);	 }
"return"    { return new Symbol(sym.treturn);	 }
"("    { return new Symbol(sym.l_par);	 }
")"    { return new Symbol(sym.r_par);	 }
"["    { return new Symbol(sym.l_bracket);	 }
"]"    { return new Symbol(sym.r_bracket);	 }
"{"    { return new Symbol(sym.l_brace);	 }
"}"    { return new Symbol(sym.r_brace);	 }
","    { return new Symbol(sym.comma);	 }
"int"    { return new Element(yytext(), yyline, yycolumn, sym.tint);	 }
"float"    { return new Element(yytext(), yyline, yycolumn, sym.tfloat);	 }
"bool"    { return new Element(yytext(), yyline, yycolumn, sym.tbool);	 }
"true"    { return new Element(yytext(), yyline, yycolumn, sym.constbool);	 }
"false"    { return new Element(yytext(), yyline, yycolumn, sym.constbool);	 }
";"    { return new Symbol(sym.semicolon);	 }
"="    { return new Symbol(sym.assig);	 }
"+"    { return new Symbol(sym.add);	 }
"-"    { return new Symbol(sym.sub);	 }
"*"    { return new Symbol(sym.mul);	 }
"/"    { return new Symbol(sym.div);	 }
"if"    { return new Symbol(sym.tif);	 }
"then"    { return new Symbol(sym.tthen);	 }
"else"    { return new Symbol(sym.telse);	 }
"for"    { return new Symbol(sym.tfor);	 }
"while"    { return new Symbol(sym.twhile);	 }
"do"    { return new Symbol(sym.tdo);	 }
"until"    { return new Symbol(sym.tuntil);	 }
"not"    { return new Symbol(sym.tnot);	 }
"and"    { return new Symbol(sym.tand);	 }
"or"    { return new Symbol(sym.tor);	 }
"=="    { return new Symbol(sym.equals);	 }
"<"    { return new Symbol(sym.less);	 }
">"    { return new Symbol(sym.greater);	 }
">="    { return new Symbol(sym.greaterequal);	 }
"<="    { return new Symbol(sym.lessequal);	 }
"#include"	{ return new Symbol(sym.include);	 }
[a-zA-Z0-9_]+ ".h" { return new Element(yytext(), yyline, yycolumn, sym.hfile);	 }

[a-zA-Z] [a-zA-Z0-9_]*	{ return new Element(yytext(), yyline, yycolumn, sym.tid);	 }
("-")? [0-9]+ { return new Element(yytext(), yyline, yycolumn, sym.constint);	 }
("-")? [0-9]+ "." [0-9]+ { return new Element(yytext(), yyline, yycolumn, sym.constfloat);	 }

/* whitespace */
{WhiteSpace}    { /* ignore */ }

/* comments */
{Comment}   { /* ignore */ }

/* error fallback */
[^]     { throw new Error("Lexical Error (Line " + yyline + ", Column " + yycolumn + ") unkown character: " + yytext()); }