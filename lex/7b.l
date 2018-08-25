%{
	#include"y.tab.h"
%}
%%
[\t \n] ;
"int" return INT;
"float" return FLOAT;
[a-zA-Z] return ALPHA;
[0-9] return DIG;
"_" return UNDRSCR;
. return yytext[0];
%%
