#!/usr/bin/mumps

 set n=0
 kill ^a
 open 1:"day5.tst,old"
 if '$test write "Erro na abertura day1.tst/dat",! halt
 use 1
 for i=1:1 do
 . read line
 . if n=0 do
 .. s n=$L(line)+1\4
 . if line>0 break
 . do crates
 for i=1:1 do
 . read line
 . if '$test break
 . s m=$P(line," ",2),f=$P(line," ",4),t=$P(line," ",6)
 . s c=$E(^a(f),1,m)
 . f j:1:1:m s ^a(t)=$E(^a(f),j)_^a(t)
 . s ^a(f)=$E(^a(f),m+1,$L(^a(f)))
 close 1
 use 5
 s r="Parte 1: " f j:1:1:n s r=r_$E(^a(j),1)
 w r,!
 halt

crates
 if line>0 quit
 for j:1:1:n do
 . s ix=(j-1)*4+2
 . set c=$E(line,ix)
 . if $O(^a(j))=0 s ^a(j)=""
 . if c'=" " s ^a(j)=^a(j)_c
 quit