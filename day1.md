Problema: https://adventofcode.com/2022/day/1

```mumps
#!/usr/bin/mumps

    set tot=0,ix=1,max=0
    open 1:"day1.tst,old"
    if '$test write "Erro na abertura day1.tst/dat",! halt
    use 1
    for i:1:1 do
    . read line
    . if '$test break
    . set tot=tot+line
    . if line="" do
    .. set Elves(ix)=tot
    .. set ix=ix+1
    .. set tot=0
    set Elves(ix)=tot
    close 1
    use 5
    for i:1:1:ix do
    . set:Elves(i)>max max=Elves(i)
    write "Maximo: ",max,!
```
