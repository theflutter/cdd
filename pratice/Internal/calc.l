%option noyywrap

%{
	#include<stdio.h>
	#include "calc.tab.h"
%}

%%
[0-9]+ {yylval = atoi(yytext); return number;}
[+*-/%] {return yytext[0];}
[\n] {return 0;}
%%