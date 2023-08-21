%{
	#include<stdio.h>
%}

%token num '+' '*' '-' '/'  

%%
E : E '+' T {printf("+");}
E : E '-' T {printf("-");}
E : T {}
T : T '/' F {printf("/");}
T : T '*' F {printf("*");}
T : F {}
F : num {printf("%d",$1);}
%%

int main()
{
	yyparse();
}

int yyerror(char* s)
{
	printf("%s",s);
	return 0;
}
