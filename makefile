make: 
	lex bersin.l
	yacc -d bersin.y
	gcc lex.yy.c y.tab.c -ll
run:
	./a.out < example.brn

clear:
	rm lex.yy.c y.tab.c a.out y.tab.h 
