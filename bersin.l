%%
"("             printf("OPEN PARENTHESIS\n");
")"             printf("CLOSE PARENTHESIS\n");
true|false		printf("BOOLEAN\n");
do	            printf("DO\n");
while	        printf("WHILE\n");
for	            printf("FOR\n");
"||"            printf("OR\n");
&&              printf("AND\n");
>=              printf("GREATER OR EQUAL\n");
"<="            printf("SMALLER OR EQUAL\n");
"<"             printf("SMALLER\n");
">"             printf("GREATER\n");          
if              printf("IF\n");
else	        printf("ELSE\n");
[a-zA-Z]+       printf("IDENTIFIER\n");
==              printf("EQUALS\n");
!=              printf("NOT EQUALS\n");
=               printf("ASSIGN\n");
;			    printf("SEMICOLON\n");
0|[1-9][0-9]*   printf("INTEGER\n");
^[0-9]+.[0-9]+$ printf("DOUBLE\n");
--              printf("MINUS MINUS\n");
"++"            printf("PLUS PLUS\n");
"+"             printf("PLUS\n");
"-"             printf("MINUS\n");
\ |\t|\n        ;
.			    printf("Syntax Error!\n");
%%
