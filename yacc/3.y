%{
	#include<stdio.h>
%}
%token A B 
%%
S: A S B
|
;
%%
int yyerror(){ printf("ERROR"); exit(0);}
int main(){ yyparse();}
