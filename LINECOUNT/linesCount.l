%{
int lc=0,sc=0,tc=0,wc=0,cc=0;
%}
%%
\n {lc++;}
" " {sc++;}
\t {tc++;}
. {cc++;}
[a-zA-Z0-9]+ {wc++;cc=cc+yyleng;}
%%
int yywrap(){};
int main(){
	printf("enter :");
	yylex();
	printf("lines = %d \n spaces = %d \n tabSpaces = %d \n characters = %d \n words = %d",lc,sc,tc,cc,wc);
	return 0;
	}