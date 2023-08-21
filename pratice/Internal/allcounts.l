%{
#include<stdio.h>
int lc=0,sc=0,tc=0,ch=0,wc=0;
%}

%%
\n { lc++;}
[ ] { sc++;}
\t { tc++;}
. {ch++;}
[a-zA-Z0-9]+ { wc++; ch = ch+yyleng;}
%%

int yywrap(){ return 1; }

int main(){
	printf("Enter the Sentence : ");
	yylex();
	printf("Number of lines : %d %d %d %d %d",lc, sc, tc, ch, wc);
	//printf("Number of spaces : %d\n",sc);
	//printf("Number of tabs, words, charc : %d , %d , %d\n",tc,wc,ch);

}
