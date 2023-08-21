%{
	#include<stdio.h>
%}

%%
[hii] {printf("bye"); return 1;}
[bye] {printf("hii"); return 1;}
%%

int yywrap(){}

int main()
{
	yylex();
}