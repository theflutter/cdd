%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
\/\/(.*) {};
\/\*(.*\n)*.*\*\/ {};
%%
int yywrap(){}
int main()
{
yyin=fopen("Bhanu.c","r");
yyout=fopen("Prakash.c","w");
yylex();
return 0;
}