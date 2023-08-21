%option noyywrap

%{
	#include<stdio.h>
	int vc=0, cc=0;
%}

%%
[aeiouAEIOU] {vc++;}
[a-zA-Z] {cc++;}
%%



int main()
{
	yylex();
	printf("the vc :%d and the cc :%d",vc,cc);
	return 0;
}

