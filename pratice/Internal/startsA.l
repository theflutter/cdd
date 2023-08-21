%{
	#include<stdio.h>
	int c=0;
%}

%%
[a-zA-Z]+ {if(yytext[0] == 'A' || yytext[0] == 'a'){c++;};}
%%

int yywrap(){}
int main()
{
	yylex();
	printf("%d",c);
}