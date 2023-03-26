# Programming Language Bersin
Group Members: Berkay Acar , Ersin Aydoğmuş

## Explanations about the language

- Takes a file with extension .brn
- There are 2 loops in our language.      
  Woop(i<3){          
  @@Body      
  i++;
}  
If (i<3) is true, the body inside the parentheses works.                  
Foop(int i=0; i<10; i++;){            
@@Body          
}  
The foop loop works with the same logic as the woop. Only the syntax is different.
- @@ is used as a comment line.    
- To check some conditions "?" and ":" operator is used. For exanple;     
?(a>5){   
@@FirstBody      
}   
:{    
@@SecondBody   
}     
if the condition a>5 is true then the FirstBody works. Otherwise the SecondBody works.      
- There are conditional operators.    
"||" --> OR     
"&&" --> AND    
- There are 3 data types.
1,2,3,... --> INTEGER   
0.1, 0.2, 0.3,... --> DOUBLE    
$ BERSIN $  --> STRING    

- You can run your program by running the makefile and giving it to myprog as input:

make ./myprog < example.brn
