%{
#include<stdio.h>    
int yylex(void);
%}

%token NUM
%left '+' '-'
%left '*' '/'
%left '(' ')'

%%
E : T {printf("Result=%d",$$);}
T : T '+' T {$$=$1+$3;}
| T '-' T {$$=$1-$3;}
| T '*' T {$$=$1*$3;}
| T '/' T {$$=$1/$3;}
| '(' T ')' {$$=$2;}
| NUM {$$=$1;}
;
%%

int main()
{
    printf("Enter=");
    yyparse();
}
int yyerror()
{
    printf("Error");
}