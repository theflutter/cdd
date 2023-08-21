%{
	#include<stdio.h>
	#include<stdlib.h>
	#include "yytext"
%}

%token val '+' '*'

%%
E : E '+' T {printf("+");}
E : T {}
T : T '*' F {printf("*");}
T : F {}
F : val {printf("%c",yytext[0]);}
;
%%
int main()
{
	yyparse();
}

int yyerror(char *s2)
{
	printf("%s",s2);
	return 0;
}