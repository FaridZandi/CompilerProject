# CompilerProject
Compiler Design course project 

the grammer of language our compiler supports is: 

```Program -> Declaration-list eof
Declaration-list -> Declaration Declaration-list
Declaration-list -> ε   
Declaration -> Declaration-initial Declaration-prime
Declaration-initial -> Type-specifier id
Declaration-prime -> Fun-declaration-prime
Declaration-prime -> Var-declaration-prime
Var-declaration-prime -> ; 
Var-declaration-prime -> [ num ] ;
Fun-declaration-prime -> ( Params ) Compound-stmt
Type-specifier -> int
Type-specifier -> void
Params -> int id Param-Prime Param-list
Params -> void Param-list-void-abtar
Param-list-void-abtar -> id Param-prime Param-list
Param-list-void-abtar -> ε
Param-list -> , Param Param-list
Param-list -> ε
Param -> Declaration-initial Param-prime
Param-prime -> ε
Param-prime -> [ ]
Compound-stmt -> { Declaration-list Statement-list }
Statement-list -> Statement Statement-list
Statement-list -> ε
Statement -> Expression-stmt
Statement -> Compound-stmt
Statement -> Selection-stmt
Statement -> Iteration-stmt
Statement -> Return-stmt
Statement -> Switch-stmt
Expression-stmt -> Expression ;
Expression-stmt -> continue ;
Expression-stmt -> break ;
Expression-stmt -> ;
Selection-stmt -> if ( Expression ) Statement else Statement
Iteration-stmt -> while ( Expression ) Statement
Return-stmt -> return Return-stmt-prime
Return-stmt-prime -> ; 
Return-stmt-prime -> Expression ;
Switch-stmt -> switch ( Expression ) { Case-stmts Default-stmt }
Case-stmts -> Case-stmt Case-stmts 
Case-stmts -> ε
Case-stmt -> case num : Statement-list
Default-stmt -> default : Statement-list
Default-stmt -> ε



Expression -> id B
Expression -> Simple-expression-zegond

B -> = Expression
B -> [ Expression ] H
B -> Simple-expression-prime

H -> = Expression
H -> G D C

Simple-expression-zegond -> Additive-expression-zegond C
Simple-expression-prime -> Additive-expression-prime C
C -> Relop Additive-expression
C -> ε

Relop -> ==
Relop -> < 
Addop -> +
Addop -> -

Additive-expression -> Term D
Additive-expression-prime -> Term-prime D
Additive-expression-zegond -> Term-zegond D
D -> Addop Term D
D -> ε

Term -> Signed-factor G
Term-prime -> Signed-factor-prime G
Term-zegond -> Signed-factor-zegond G
G -> * Signed-factor G
G -> ε

Signed-factor -> + Factor
Signed-factor -> - Factor
Signed-factor -> Factor
Signed-factor-prime -> Factor-prime
Signed-factor-zegond -> + Factor
Signed-factor-zegond -> - Factor
Signed-factor-zegond -> Factor-zegond

Factor -> ( Expression )
Factor -> num
Factor -> id Var-call-prime

Var-call-prime -> Var-prime 
Var-call-prime -> ( Args ) 
Var-prime -> [ Expression ]
Var-prime -> ε

Factor-prime -> ( Args )
Factor-prime -> ε


Factor-zegond -> ( Expression )
Factor-zegond -> num

Args -> Arg-list
Args -> ε
Arg-list ->  Expression Arg-list-prime
Arg-list-prime -> , Expression Arg-list-prime
Arg-list-prime -> ε
```

