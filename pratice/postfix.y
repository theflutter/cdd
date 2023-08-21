%{
#include<stdio.h>
int yylex(void);
%}

%token NUM
%left '+' '-'
%left '*' '/' '%'
%right NEG

%%
S : E {printf("\n");}
E : E '+' E {printf("+");}
| E '-' E {printf("-");}
| E '*' E {printf("*");}
| E '/' E {printf("/");}
| E '%' E {printf("%");}
| '-' E %prec NEG {printf("-");}
| NUM {printf("%d",yylval);}
;
%%

int main()
{
    printf("Enter= ");
    yyparse();
}
int yyerror()
{
    printf("Error");
}