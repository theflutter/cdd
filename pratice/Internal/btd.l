%option  noyywrap

%{
	#include<stdio.h>
	#include "btd.tab.h"
%}

%%
0 {yylval = 0; return zero;}
1 {yylval = 1; return one;}
\n {return 0;}
. {return yytext[0];}
%%