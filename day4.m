#!/usr/bin/mumps

    set tot=0,tot2=0
    open 1:"day4.tst,old"
    if '$test write "Erro na abertura day1.tst/dat",! halt
    use 1
    for i=1:1 do
    . read line
    . if '$test break
    . do faixas
    close 1
    use 5
    w "parte 1: ",tot,!
    w "parte 2: ",tot2,!
    halt

faixas
    s l=$P(line,",",1),r=$P(line,",",2)
    s l1=$P(l,"-",1),l2=$P(l,"-",2),r1=$P(r,"-",1),r2=$P(r,"-",2)
    s t1=(l1'>r1)&(l2'<r2)
    s t2=(r1'>l1)&(r2'<l2)
    s:t1!t2 tot=tot+1
    s t=(r1>l2)!(r2<l1)
    s:'t tot2=tot2+1
    quit