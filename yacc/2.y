%{
	#include<stdio.h>
%}
%token A B C
%%
S:E F
E:A E B
|A B
;
F: B F C
|B C
;
%%
int yyerror(){ printf("ERROR"); exit(0);}
int main(){ 
yyparse();
printf("VALID\n");
}
