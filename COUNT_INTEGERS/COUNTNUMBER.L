%{
#include<stdio.h>
int ic=0;
int fc=0;
%}
%%
[0-9]+ {ic++;}
[0-9]*"."[0-9]+ {fc++;}
%%
int yywrap(){}
int main()
{
printf("ENTER THE NUMBERS: \n");
yylex();
printf("NUMBER OF INTEGERS ARE: %d\n",ic);
printf("NUMBER OF FLOAT ARE: %d\n",fc);


}
