%{
	#include<stdio.h>
	int i=0, f=0;
%}

%%
[0-9]+"."[0-9] {f++;}
[0-9]+ {i++;}
%%

int yywrap(){}

int main()
{
	yylex();
	printf("int :%d, float :%d",i,f);
	return 0;
}