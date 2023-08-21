%{
#include<stdio.h>
#include "CALCULATOR.tab.h"
extern int yylval;
%}
%%
[0-9]+ {yylval=atoi(yytext);return NUMBER;}
[\t] {return 0;}
[\n] {return 0;}
. {return yytext[0];}
%%
int yywrap(){};

