%{
	#include<stdio.h>
	int p=0,s=0;
%}
%%
"printf" {p++;fprintf(yyout,"writef");}
"scanf"  {s++;fprintf(yyout,"readf");}
. {fprintf(yyout,"%s",yytext);}
%%
int yywrap(){
	return 1;
}
int main()
{
	yyin=fopen("t.txt","r");
	yyout=fopen("o.txt","w");
	yylex();
	printf("%d %d",p,s);
}
