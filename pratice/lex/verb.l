%option noyywrap

%{
#include<stdio.h>    
%}

%%
[a-z]+[ed|ing|nt|am|t] {printf("verb");}
. {printf("not verb");}
%%

int main()
{
    printf("Enter= ");
    yylex();
}