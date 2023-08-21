%{
	#include<stdio.h>
	#include<stdlib.h>
%}

%token zero one

%%
N : L {printf("%d\n",$$);}
L : L B {$$=$1*2+$2;}
L : B {$$=$1;}
B : one {$$=$1;}
B : zero {$$=$1;};
%%

int main()
{
	yyparse();
}

int yyerror(char *s)
{
	printf("%s",s);
	return 0;
}