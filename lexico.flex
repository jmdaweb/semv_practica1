package com.semv.practica1.lexer;
import com.semv.practica1.syntactic.sym;
import java_cup.runtime.*;

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
filename = [a-zA-Z0-9_]+ ".h"

%%

"void"    { return new java_cup.runtime.Symbol(sym.tvoid);	 }
"return"    { return new java_cup.runtime.Symbol(sym.treturn);	 }
"("    { return new java_cup.runtime.Symbol(sym.l_par);	 }
")"    { return new java_cup.runtime.Symbol(sym.r_par);	 }
"["    { return new java_cup.runtime.Symbol(sym.l_bracket);	 }
"]"    { return new java_cup.runtime.Symbol(sym.r_bracket);	 }
"{"    { return new java_cup.runtime.Symbol(sym.l_brace);	 }
"}"    { return new java_cup.runtime.Symbol(sym.r_brace);	 }
","    { return new java_cup.runtime.Symbol(sym.comma);	 }
"int"    { return new java_cup.runtime.Symbol(sym.tint);	 }
"float"    { return new java_cup.runtime.Symbol(sym.tfloat);	 }
";"    { return new java_cup.runtime.Symbol(sym.semicolon);	 }
"="    { return new java_cup.runtime.Symbol(sym.assig);	 }
"+"    { return new java_cup.runtime.Symbol(sym.add);	 }
"-"    { return new java_cup.runtime.Symbol(sym.sub);	 }
"*"    { return new java_cup.runtime.Symbol(sym.mul);	 }
"/"    { return new java_cup.runtime.Symbol(sym.div);	 }
"if"    { return new java_cup.runtime.Symbol(sym.tif);	 }
"then"    { return new java_cup.runtime.Symbol(sym.tthen);	 }
"else"    { return new java_cup.runtime.Symbol(sym.telse);	 }
"for"    { return new java_cup.runtime.Symbol(sym.tfor);	 }
"while"    { return new java_cup.runtime.Symbol(sym.twhile);	 }
"do"    { return new java_cup.runtime.Symbol(sym.tdo);	 }
"until"    { return new java_cup.runtime.Symbol(sym.tuntil);	 }
"not"    { return new java_cup.runtime.Symbol(sym.tnot);	 }
"and"    { return new java_cup.runtime.Symbol(sym.tand);	 }
"or"    { return new java_cup.runtime.Symbol(sym.tor);	 }
"=="    { return new java_cup.runtime.Symbol(sym.equals);	 }
"<"    { return new java_cup.runtime.Symbol(sym.less);	 }
">"    { return new java_cup.runtime.Symbol(sym.greater);	 }
">="    { return new java_cup.runtime.Symbol(sym.greaterequal);	 }
"<="    { return new java_cup.runtime.Symbol(sym.lessequal);	 }
"#include"	{ return new java_cup.runtime.Symbol(sym.include);	 }
{filename} { return new java_cup.runtime.Symbol(sym.hfile);	 }

[a-zA-Z] [a-zA-Z0-9_]*	{ return new java_cup.runtime.Symbol(sym.tid);	 }
("-")? [0-9]+ { return new java_cup.runtime.Symbol(sym.constint);	 }
("-")? [0-9]+ "." [0-9]+ { return new java_cup.runtime.Symbol(sym.constfloat);	 }

/* whitespace */
{WhiteSpace}    { /* ignore */ }

/* comments */
{Comment}   { /* ignore */ }

/* error fallback */
[^]     { throw new Error("Lexical Error (Line " + yyline + ", Column " + yycolumn + ") unkown character: " + yytext()); }