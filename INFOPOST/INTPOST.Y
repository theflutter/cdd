%{
#include<stdio.h>
int flag=0;
int yylex();
void yyerror();
%}
%token NUMBER;
%left '+''-'
%left '*''/'
%right 'NEGATIVE'

%%
ArithmeticExpression: E {printf("\n");
return 0;
}
E:E'+'E {printf("+");}
|E'-'E {printf("-");}
|E'*'E {printf("*");}
|E'/'E {printf("/");}
|'('E')' {printf("");}
|NUMBER {printf("%d",yylval);}
%%
int main()
{
yyparse();
if(flag==0)
{
	printf("valid");
}
}
void yyerror()
{
	printf("INVALID");
}