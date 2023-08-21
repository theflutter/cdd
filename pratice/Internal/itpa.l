%option noyywrap

%{
	#include<stdio.h>
	#include "itpa.tab.h"
%}

%%
[a-zA-Z] {return val;}
[+*] {return yytext[0];}
[\n] {return 0;}
%%