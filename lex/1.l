%{
	#include<stdio.h>
	int c=0,v=0;
%}
%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
%%
int yywrap(){
	return 1;
}
int main()
{
	yylex();
	printf("%d %d",v,c);
}
