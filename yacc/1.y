%{
	#include<stdio.h>
%}
%token NUM
%left '+' '-'
%left '*' '/'
%%
S:E {printf("The result is %d\n",$$);}
E:E '+' E { $$=$1+$3;}
|E '*' E { $$=$1*$3;}
|'(' E ')'{$$=$2;}
|NUM { $$=$1;}
;
%%
int yyerror(){
	printf("Invalid\n");
	exit(0);
}
int main()
{
	yyparse();
}
