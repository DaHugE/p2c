import java_cup.runtime.*;

%%
%cup
%line
%column
%unicode

lettres		= [A-Za-z]
chiffres 	= [0-9]
underscore 	= [_]
identifiant 	= {lettres}({lettres}|{chiffres}|{underscore})*
entier 	    	= {chiffres}*
flottant	= {entier}\.{entier}
char		= '.'
commentaire	= "{"[^}]*"}"
chaine	        = "\""[^\"]*"\""
espace          = [ \n\t]
ptvirg          = ";"

%%

begin           {System.out.println("_BEGIN<"+yytext()+">"); return new Symbol(sym._BEGIN, new String(yytext()));}
else            {System.out.println("ELSE<"+yytext()+">"); return new Symbol(sym.ELSE, new String(yytext()));}
end             {System.out.println("END<"+yytext()+">"); return new Symbol(sym._END, new String(yytext()));}
if              {System.out.println("IF<"+yytext()+">"); return new Symbol(sym.IF, new String(yytext()));}
for             {System.out.println("FOR<"+yytext()+">"); return new Symbol(sym.FOR, new String(yytext()));}
to              {System.out.println("TO<"+yytext()+">"); return new Symbol(sym.TO, new String(yytext()));}
do              {System.out.println("DO<"+yytext()+">"); return new Symbol(sym.DO, new String(yytext()));}
Program         {System.out.println("PROGRAM<"+yytext()+">"); return new Symbol(sym.PROGRAM, new String(yytext()));}
procedure       {System.out.println("PROCEDURE<"+yytext()+">"); return new Symbol(sym.PROCEDURE, new String(yytext()));}
Function        {System.out.println("FUNTION<"+yytext()+">"); return new Symbol(sym.FUNCTION, new String(yytext()));}
then            {System.out.println("THEN<"+yytext()+">"); return new Symbol(sym.THEN, new String(yytext()));}
var             {System.out.println("VAR<"+yytext()+">"); return new Symbol(sym.VAR, new String(yytext()));}
"*"             {System.out.println("FOIS<"+yytext()+">"); return new Symbol(sym.FOIS, new String(yytext()));}
"+"             {System.out.println("PLUS<"+yytext()+">"); return new Symbol(sym.PLUS, new String(yytext()));}
"-"             {System.out.println("MOINS<"+yytext()+">"); return new Symbol(sym.MOINS, new String(yytext()));}
"/"             {System.out.println("SUR<"+yytext()+">"); return new Symbol(sym.SUR, new String(yytext()));}
{ptvirg}        {System.out.println("PTVIRG<"+yytext()+">"); return new Symbol(sym.POINTVIRG, new String(yytext()));}
","             {System.out.println("VIRG<"+yytext()+">"); return new Symbol(sym.VIRG, new String(yytext()));}
"("             {System.out.println("PARENTG<"+yytext()+">"); return new Symbol(sym.PARENTG, new String(yytext()));}
")"             {System.out.println("PARENTD<"+yytext()+">"); return new Symbol(sym.PARENTD, new String(yytext()));}
"="             {System.out.println("EGAL<"+yytext()+">"); return new Symbol(sym.EGAL, new String(yytext()));}
"<"             {System.out.println("PPTQ<"+yytext()+">"); return new Symbol(sym.PPTQ, new String(yytext()));}
">"             {System.out.println("PGDQ<"+yytext()+">"); return new Symbol(sym.PGDQ, new String(yytext()));}
"<="            {System.out.println("PPTOUEGQ<"+yytext()+">"); return new Symbol(sym.PPTOUEGQ, new String(yytext()));}
">="            {System.out.println("PGDOUEGQ<"+yytext()+">"); return new Symbol(sym.PGDOUEGQ, new String(yytext()));}
"!="            {System.out.println("DIFF<"+yytext()+">"); return new Symbol(sym.DIFF, new String(yytext()));}
":"             {System.out.println("DEUXPOINT<"+yytext()+">"); return new Symbol(sym.DEUXPOINT, new String(yytext()));}
":="            {System.out.println("ASSIGN<"+yytext()+">"); return new Symbol(sym.ASSIGN, new String(yytext()));}
"."             {System.out.println("POINT<"+yytext()+">"); return new Symbol(sym.POINT, new String(yytext()));}
{chaine}        {System.out.println("CHAINE<"+yytext()+">"); return new Symbol(sym.CHAINE, new String(yytext()));}
{identifiant}   {System.out.println("ID<"+yytext()+">"); return new Symbol(sym.ID, new String(yytext()));}
{entier}        {System.out.println("INT<"+yytext()+">"); return new Symbol(sym.INT, new String(yytext()));}
{flottant}      {System.out.println("REAL<"+yytext()+">"); return new Symbol(sym.REAL, new String(yytext()));}
{char}          {System.out.println("CARAC<"+yytext()+">"); return new Symbol(sym.CARAC, new String(yytext()));}
{commentaire}   { System.out.println("Recognized comment: " + yytext()); }
{espace}    	{}
.               { System.out.println("Illegal char, '" + yytext() +
		"' line: " + yyline + ", column: " + yychar); }
