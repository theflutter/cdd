%%
[a-zA-Z]+[ing]|[ING]|[ed]|[ED] {printf("verd");}
. {printf("not a verd");}
%%

int yywrap(){}

int main()
{
	yylex();
	return 1;
}