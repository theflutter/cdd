%option noyywrap

%{
#include<stdio.h>    

%}

%%
(if)|(else)|(for)|(while)|(switch) {printf("Keywords\n");}
(=)|(<)|(>)|(!=)|(==)|(<=)|(>=) {printf("Operators\n");}
[_]*[a-zA-Z]+[0-9]* {printf("variable");}
. {printf("Special character\n");}
%%

int main()
{
    printf("Enter= ");
    yylex();
}