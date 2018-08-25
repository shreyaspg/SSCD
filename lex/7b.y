%{
	#include<stdio.h>
	#include<stdlib.h>	
	int count=0;
	extern FILE* yyin;
%}
%token INT FLOAT UNDRSCR DIG ALPHA
%%
S:ST { printf("accepted =%d",count);}
;
ST: KEY MANY ';' ST
|
;
MANY: VAR ',' MANY	{count++;}
|VAR	{count++;}
|
;
KEY: INT
|FLOAT
;
VAR:ALPHA EXP
|UNDRSCR EXP
;
EXP: EXP EXP
|DIG
|ALPHA
|UNDRSCR
|
;
%%
int yyerror(){printf("Error");}
int main()
{
	yyin = fopen("t.txt","r");	
	yyparse();
}
