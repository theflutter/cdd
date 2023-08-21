%{
#include<stdio.h>
int flag=0;
int yylex();
void yyerror();
%}
%token NUMBER
%left '+''-'
%left '*''/''%'
%left '('')'
%%
ArithmeticExpression: E {printf("RESULT is:  %d",$$);
return 0;
}
E:E'+'E {$$=$1+$3;}
|E'-'E {$$=$1-$3;}
|E'*'E {$$=$1*$3;}
|E'/'E {$$=$1/$3;}
|E'%'E {$$=$1%$3;}
|'('E')' {$$=$2;}
|NUMBER {$$=$1;}
;
%%
void main(){
printf("ENTER THE EXPRESSION: ");
yyparse();
if(flag==0)
{
	printf("VALID");
}

}
void yyerror()
{
printf("INVALID");
flag=1;
}