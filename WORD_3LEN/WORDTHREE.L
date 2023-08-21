%{
#include<stdio.h>
int length=0;
%}

%%
[a-zA-Z0-9]+ {length=yyleng;fun(length);}
%%
fun(int l)
{
if(yytext[0]=='A')
{
 if(l==3)
 {
 printf("%s Starting with A AND EQUAL TO 3\n",yytext);
 }
 else
 {
	 printf("%s Starting with A AND Not EQUAL TO 3\n",yytext);

 }
}
else
{
printf("%s NOT STARTING WITH A\n",yytext);
}
}
int yywrap(){}
int main(){
printf("ENTER YOUR STRING: ");
yylex();
}