%option noyywrap

%{
	#include<stdio.h>
	#include "itp.tab.h"
%}

%%
[0-9]+ {yylval = atoi(yytext); return num;}
[+*-/] {return yytext[0];}
[\n] {return 0;}
%%