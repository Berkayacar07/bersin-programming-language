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
- ">=" --> Greater or equal   
- "<=" --> Smaller or equal   
- "<" --> Smaller   
- ">" --> Greater   
- / --> Divider   
- * --> Multiplier  
- == --> Equals   
- != --> Not equals   
- = --> Assign  
- "--" --> Minus minus  
- ++ --> Plus plus  
- "-" --> Minus 
- + --> Plus
- There are conditional operators.    
"||" --> OR     
"&&" --> AND    
- There are 3 data types.
1,2,3,... --> INTEGER   
0.1, 0.2, 0.3,... --> DOUBLE    
$ BERSIN $  --> STRING    

- You can run your program by running the makefile and giving it to myprog as input:

make bersin   
 ./bersin < example.brn     



Syntax
<program>        ::= <statement_list>

<statement_list> ::= <statement>
                   | <statement> ";" <statement_list>

<statement>      ::= <loop_statement>
                   | <conditional_statement>
                   | <command_statement>

<loop_statement> ::= "woop" <expression> "{" <statement_list> "}"

<conditional_statement> ::= "?" <expression> <statement_list> <else_statement>
<else_statement> ::= ":" <statement_list> | ε

<command_statement> ::= <identifier> <command>

<command>        ::= <assignment>
                   | <increment>
                   | <decrement>

<assignment>     ::= "=" <expression>

<increment>      ::= "++"

<decrement>      ::= "--"

<expression>     ::= <comparison>
                   | <comparison> "||" <comparison>

<comparison>     ::= <term>
                   | <term> ">" <term>
                   | <term> ">=" <term>
                   | <term> "<" <term>
                   | <term> "<=" <term>
                   | <term> "==" <term>
                   | <term> "!=" <term>

<term>           ::= <factor>
                   | <factor> "*" <factor>
                   | <factor> "/" <factor>

<factor>         ::= <number>
                   | <identifier>
                   | "(" <expression> ")"

<number>         ::= <integer> | <double>

<integer>        ::= <digit>+
<double>         ::= <digit>* "." <digit>+

<identifier>     ::= <letter> (<letter> | <digit>)*

<digit>          ::= [0-9]
<letter>         ::= [a-zA-Z]