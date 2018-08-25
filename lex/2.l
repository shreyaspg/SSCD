%{ 
	#include<stdio.h>
	int w=0,s=0,l=0,c=0;
%}
%%
[a-zA-Z] {c+=yyleng;}
[a-zA-Z][ ] {w++;s++;c++;}
[a-zA-Z][\n] {w++;l++;c++;}
[\t] {s+=8;}
[\n] {l++;}
%%
int yywrap(){
	return 1;
}
int main()
{
	yylex();
	printf("%d %d %d %d",w,s,l,c);
}
