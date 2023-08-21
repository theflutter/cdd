%{
	#include<stdio.h>
	int sc=0, lc=0, tc=0, ch=0, wc=0;
%}

%%
[\n] {lc++;}
[ ] {sc++;}
[\t] {tc++;}
. {ch++;}
[a-zA-Z]+ {wc++;}
%%

int yywrap(){}

int main()
{
	yylex();
	printf("sc :%d, lc :%d, tc :%d, ch :%d, wc :%d",sc,lc,tc,ch,wc);
	return 0;
}