bersin: bersin.l
	lex bersin.l
	gcc -o bersin lex.yy.c -ll

clean:
	rm bersin lex.yy.c
