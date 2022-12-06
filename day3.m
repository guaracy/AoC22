#!/usr/bin/mumps

    set mat="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    set tot=0
    open 1:"day3.tst,old"
    if '$test write "Erro na abertura day2.tst/dat",! halt
    for i:1:1 do
    . use 1
    . read line
    . if '$test break
    . s len=$L(line)\2
    . s pri=$E(line,1,len),seg=$E(line,len+1,len*2)
    . for j:1:1:len do
    .. if $F(seg,$E(pri,j))>0 do
    ... s c=$E(pri,j)
    ... break
    . s tot=tot+$F(mat,c)-1
    close 1
    use 5
    w "Total: ",tot,!
