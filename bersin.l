%{
#include <stdlib.h>
#include "bersin.h"
#include "y.tab.h"
void yyerror(char *);
%}

%%
"@@"		    {return COMMENTLINE;}
"WHITESPACE"	;
"TRUE"          {return TRUE;}
"FALSE"         {return FALSE;}
"BOOL"   	{return BOOLEAN;}
"FUNC"	{return FUNCTION;}
"STOPFUNC"		{return END_FUNCTION;}
"RET"	{return RETURN;}
"?"		{return IF;}
":"		{return ELSE;}
"WOOP"		{return WHILE;}
"ENDWOOP"		{return END_WHILE;}
"FOOP"		{return FOR;}
"ENDFOOP"		{return END_FOR;}
"LOG"	{return CONSOLPRINT;}
"+"             {return PLUS;}
"-"             {return MINUS;}
"*"             {return MULTIPLE;}
"/"             {return DIVIDE;}
"<"             {return LESSTHAN;}
">"             {return GREATERTHAN;}
"++"		{return INCREASE;}
"--"		{return DECREASE;}
":"		{return COLON;}
";"		{return SEMICOLON;}
","		{return COMMA;}
">="		{return EQUALORGREAT;}
"<="	        {return EQUALORLESS;}
"=="		{return EQUAL;}
"!="		{return ISNOTEQUAL;}
"AND"		{return AND;}
"OR"		{return OR;}
"("		{return OPENBR;}
")"		{return CLOSEBR;}
"{"		{return OPENCBR;}
"}"		{return CLOSECBR;}
\[		{return OPENSBR;}
\]		{return CLOSESBR;}
\"		{return QUOTES;}
    
0                           {yylval.integer = atoi(yytext); return INT; }
[1-9][0-9]*                 {yylval.integer = atoi(yytext); return INT; }
[a-zA-Z_]                   { yylval.ide = *yytext - 'a'; return IDENTIFIER; }
[-()<>=+*/;{}.]             {return *yytext; }
[+-]?[0-9]+[\.][0-9]*	    {return DINT;}
^\d*\.?\d*$	            {return FLOAT;}
[ \t\n]		             ;
.		            yyerror("Unknown character");
%%

int yywrap (void) {return 1;}