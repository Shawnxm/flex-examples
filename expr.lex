/*
 * expr.lex : Scanner for a simple
 *            expression parser.
 */

%{
#include "pl0.h"
#include <stdio.h>
%}

%%

[0-9]+     {
	     num = atol(yytext);
             return(number);
           }
[/*(A-Za-z)**/]    /*{ *n = atol(yytext); return(note); }*/
"+"        {return(plus);}
[\n]	   {printf("\n"); }	
[\t ]*     /* throw away whitespace */
.          { printf("Illegal character"); 
             return(nul);
           }
%%
void getsym()
{
	sym = yylex();
}
