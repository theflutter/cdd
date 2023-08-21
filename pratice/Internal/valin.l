%{
	#include<stdio.h>
	int c=0;
%}

%%
[a-zA-Z] {printf("identifier %s",yytext); c++;}
[+*-/] {printf("operand %s",yytext); c++;}
. {return 0;}
%%

int yywrap(){}

int main()
{
	int i;
	int f=0;
	yylex();
	//printf("%d",c);
	
	for(i=0;i<c;i++){
		if(yytext[i] == 'a' || yytext[i] == 'b' || yytext[i] == 'c') {
			i=i+1;;
			if(yytext[i] == '+' || yytext[i] == '*') {
				f=1;
			}
		}
		else{
			f=0;
			break;
		}
	}
	if(f==1){
		printf("valid");
	}
	else{
		printf("invalid");
	}
	return 0;
}

