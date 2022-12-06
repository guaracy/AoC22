#!/usr/bin/mumps

    set tot=0,max1=0,max2=0,max3=0
    open 1:"day1.tst,old"
    if '$test write "Erro na abertura day1.tst/dat",! halt
    use 1
    for i:1:1 do
    . read line
    . if '$test break
    . set tot=tot+line
    . if line="" do maximos
    close 1
    use 5
    write "Parte 1: ",max1,!
    write "Parte 2: ",max1+max2+max3,!
    halt

maximos
    s:max3<tot max3=tot
    s:max2<tot max3=max2,max2=tot
    s:max1<tot max2=max1,max1=tot
    s tot=0
    quit