#!/usr/bin/mumps

    set tot=0,max=0
    open 1:"day1.tst,old"
    if '$test write "Erro na abertura day1.tst/dat",! halt
    use 1
    for i:1:1 do
    . read line
    . if '$test break
    . set tot=tot+line
    . if line="" do
    .. set:tot>max max=tot
    .. set tot=0
    set:tot>max max=tot
    close 1
    use 5
    write "Maximo: ",max,!
