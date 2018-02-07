package analyzer;

%%

%{

private void imprimir(String descricao, String lexema) {
    System.out.println(lexema + " - " + descricao);
}

%}


%class LexicalAnalyzer
%type void


D		=	[0-9]
L		=	[a-zA-Z_]
H		=	[a-fA-F0-9]
E		=	[Ee][+-]?{D}+
FS		=	(f|F|l|L)
IS		=	(u|U|l|L)*
TC              =       "/*" [^*] ~"*/" | "/*" "*"+ "/"
EC              =       "//" [^\r\n]* {new_line}
new_line        =       \r|\n|\r\n
white_space     =       {new_line} | [ \t\f]

%%
{EC}                    { }
{TC}                    { }

"auto"			{ imprimir(">>>> OK", yytext()); }
"break"			{ imprimir(">>>> OK", yytext()); }
"case"			{ imprimir(">>>> OK", yytext()); }
"char"			{ imprimir(">>>> OK", yytext()); }
"const"			{ imprimir(">>>> OK", yytext()); }
"continue"		{ imprimir(">>>> OK", yytext()); }
"default"		{ imprimir(">>>> OK", yytext()); }
"do"			{ imprimir(">>>> OK", yytext()); }
"double"		{ imprimir(">>>> OK", yytext()); }
"else"			{ imprimir(">>>> OK", yytext()); }
"enum"			{ imprimir(">>>> OK", yytext()); }
"extern"		{ imprimir(">>>> OK", yytext()); }
"float"			{ imprimir(">>>> OK", yytext()); }
"for"			{ imprimir(">>>> OK", yytext()); }
"goto"			{ imprimir(">>>> OK", yytext()); }
"if"			{ imprimir(">>>> OK", yytext()); }
"int"			{ imprimir(">>>> OK", yytext()); }
"long"			{ imprimir(">>>> OK", yytext()); }
"register"		{ imprimir(">>>> OK", yytext()); }
"return"		{ imprimir(">>>> OK", yytext()); }
"short"			{ imprimir(">>>> OK", yytext()); }
"signed"		{ imprimir(">>>> OK", yytext()); }
"sizeof"		{ imprimir(">>>> OK", yytext()); }
"static"		{ imprimir(">>>> OK", yytext()); }
"struct"		{ imprimir(">>>> OK", yytext()); }
"switch"		{ imprimir(">>>> OK", yytext()); }
"typedef"		{ imprimir(">>>> OK", yytext()); }
"union"			{ imprimir(">>>> OK", yytext()); }
"unsigned"		{ imprimir(">>>> OK", yytext()); }
"void"			{ imprimir(">>>> OK", yytext()); }
"volatile"		{ imprimir(">>>> OK", yytext()); }
"while"			{ imprimir(">>>> OK", yytext()); }

{L}({L}|{D})*		{ imprimir(">>>> OK", yytext()); }

0[xX]{H}+{IS}?		{ imprimir(">>>> OK", yytext()); }
0{D}+{IS}?		{ imprimir(">>>> OK", yytext()); }
{D}+{IS}?		{ imprimir(">>>> OK", yytext()); }
L?'(\\.|[^\\'])+'	{ imprimir(">>>> OK", yytext()); }

{D}+{E}{FS}?		{ imprimir(">>>> OK", yytext()); }
{D}*"."{D}+({E})?{FS}?	{ imprimir(">>>> OK", yytext()); }
{D}+"."{D}*({E})?{FS}?	{ imprimir(">>>> OK", yytext()); }

L?\"(\\.|[^\\\"])*\"	{ imprimir(">>>> OK", yytext()); }

"..."			{ imprimir(">>>> OK", yytext()); }
">>="			{ imprimir(">>>> OK", yytext()); }
"<<="			{ imprimir(">>>> OK", yytext()); }
"+="			{ imprimir(">>>> OK", yytext()); }
"-="			{ imprimir(">>>> OK", yytext()); }
"*="			{ imprimir(">>>> OK", yytext()); }
"/="			{ imprimir(">>>> OK", yytext()); }
"%="			{ imprimir(">>>> OK", yytext()); }
"&="			{ imprimir(">>>> OK", yytext()); }
"^="			{ imprimir(">>>> OK", yytext()); }
"|="			{ imprimir(">>>> OK", yytext()); }
">>"			{ imprimir(">>>> OK", yytext()); }
"<<"			{ imprimir(">>>> OK", yytext()); }
"++"			{ imprimir(">>>> OK", yytext()); }
"--"			{ imprimir(">>>> OK", yytext()); }
"->"			{ imprimir(">>>> OK", yytext()); }
"&&"			{ imprimir(">>>> OK", yytext()); }
"||"			{ imprimir(">>>> OK", yytext()); }
"<="			{ imprimir(">>>> OK", yytext()); }
">="			{ imprimir(">>>> OK", yytext()); }
"=="			{ imprimir(">>>> OK", yytext()); }
"!="			{ imprimir(">>>> OK", yytext()); }
";"			{ imprimir(">>>> OK", yytext()); }
("{"|"<%")		{ imprimir(">>>> OK", yytext()); }
("}"|"%>")		{ imprimir(">>>> OK", yytext()); }
","			{ imprimir(">>>> OK", yytext()); }
":"			{ imprimir(">>>> OK", yytext()); }
"="			{ imprimir(">>>> OK", yytext()); }
"("			{ imprimir(">>>> OK", yytext()); }
")"			{ imprimir(">>>> OK", yytext()); }
("["|"<:")		{ imprimir(">>>> OK", yytext()); }
("]"|":>")		{ imprimir(">>>> OK", yytext()); }
"."			{ imprimir(">>>> OK", yytext()); }
"&"			{ imprimir(">>>> OK", yytext()); }
"!"			{ imprimir(">>>> OK", yytext()); }
"~"			{ imprimir(">>>> OK", yytext()); }
"-"			{ imprimir(">>>> OK", yytext()); }
"+"			{ imprimir(">>>> OK", yytext()); }
"*"			{ imprimir(">>>> OK", yytext()); }
"/"			{ imprimir(">>>> OK", yytext()); }
"%"			{ imprimir(">>>> OK", yytext()); }
"<"			{ imprimir(">>>> OK", yytext()); }
">"		    { imprimir(">>>> OK", yytext()); }
"^"			{ imprimir(">>>> OK", yytext()); }
"|"			{ imprimir(">>>> OK", yytext()); }
"?"			{ imprimir(">>>> OK", yytext()); }

{white_space}		{ /* ignore bad characters */ }

[^] { throw new RuntimeException("Erro Léxico. Caractere inválido " + yytext()); }