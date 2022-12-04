#!/usr/bin/mumps

    set itens="ABC",tot=0
    open 1:"day2.tst,old"
    if '$test write "Erro na abertura day2.tst/dat",! halt
    for i:1:1 do
    . use 1
    . read line
    . if '$test break
    . set line=$tr(line,"XYZ","ABC")
    . set tu=$piece(line," ",1),eu=$p(line," ",2)
    . set pe=$f(itens,eu)-1
    . set pv=0
    . if eu=tu set pv=3
    . if tu="A"&(eu="B") set pv=6
    . if tu="B"&(eu="C") set pv=6
    . if tu="C"&(eu="A") set pv=6
    . set tot=tot+pe+pv
    close 1
    use 5
    write tot," pontos",!
