%{
	#include<stdio.h>
	int v=0,c=0;
%}
%%
("int"|"float"|"char"|"double")"*"?[ ] {v=1;}
[a-zA-Z_][a-zA-Z0-9]*("["[0-9]*"]")?"="?[0-9]*[ ]*"," {if(v==1) c++;}
[a-zA-Z_][a-zA-Z0-9]*("["[0-9]*"]")?"="?[0-9]*[ ]*";" {if(v==1) {v=0;c++;}}
[0-9][a-zA-Z0-9_]*("["[0-9]*"]")?"="?[0-9]*[ ]*";" {printf(" %s is invalid",yytext);}

%%
int yywrap(){ return 1;}
int main()
{
	yylex();
	printf("%d",c);
}
