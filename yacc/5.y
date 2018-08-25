%{
	#include<stdio.h>
	#include<stdlib.h>
	extern int count=0;
	extern FILE* yyin;
	extern int yyerror();
	extern int yylex();
%}
%token FOR DIG EQU LEQ GEQ LS GS INC DEC ID
%%
S: ST {printf("I/P accepted , no= %d\n",count);}
ST: FOR '(' EXP ';' EXP ';' EXP ')' DEF {count++;}
DEF: '{' BODY '}'
|EXP ';'
|ST
|
;
BODY: BODY BODY
|EXP ';'
|ST
|
;

EXP: ID EQU DIG
|ID EQU ID
|ID LEQ DIG
|ID LEQ ID
|ID GEQ DIG
|ID GEQ ID
|ID LS DIG
|ID LS ID
|ID GS DIG
|ID GS ID
|ID INC
|ID DEC
;



%%
int yyerror(){ printf("ERROR"); exit(0);}
int main(){ 
	yyin=fopen("t.txt","r");
	yyparse();
}
