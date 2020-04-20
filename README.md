# Bison_Practice-1

##Compile

`
flex calculadora.lex
`
`
bison -d calculadora.y
`
`
gcc lex.yy.c calculadora.tab.c -lfl -lm
`
##Run

`
./a.out
`

Example input/output
I: 2+2
O: Valor=4
I: 2*2
O: Valor=4
I: 2%2
O: Valor=0
I: 2'3
O: Valor=8
