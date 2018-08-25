%{
	#include"y.tab.h"
%}
%%
[\t \n] ;
"for" return FOR;
[0-9]+ return DIG;
"=" return EQU;
"<=" return LEQ;
">=" return GEQ;
"<" return LS;
">" return GS;
"++" return INC;
"--" return DEC;
[a-zA-Z]+ return ID;
. return yytext[0];
%%
