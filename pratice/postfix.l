%option noyywrap

%{
#include "y.tab.h"
int yylval=0;
%}

%%
[0-9]+ {yylval=atoi(yytext);
            return NUM;}
[\n] return 0;
. return yytext[0];
%%