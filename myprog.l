%%
true|false		printf("BOOLEAN\n");
;			    printf("SEMICOLON\n");
0|[1-9][0-9]*   printf("INTEGER\n");
[0-9]+          printf("Syntax Error: Wrong INTEGER Format\n");
\ |\t|\n        ;
.			    printf("Syntax Error!");
%%
