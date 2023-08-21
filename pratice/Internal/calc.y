%{
	#include<stdio.h>
%}

%token number '+' '*' '-' '/' '%'

%%
E : E '+' T {$$=$1+$3; printf("%d",$$);}
E : E '-' T {$$=$1-$3;}
E : T {$$=$1;}
T : T '*' F {$$=$1*$3;}
T : T '/' F {$$=$1/$3;}
T : T '%' F {$$=$1%$3;}
T : F {$$=$1;}
F : number {$$=$1;}
;
%%

int main()
{
	yyparse();
}

int yyerror(char *s1)
{
	printf("%s",s1);
	return 0;
}

