function x=lsolve(L,y)
U=L(length(L):-1:1,length(L):-1:1);
y=y(length(y):-1:1);

x=usolve(U,y);

x=x(length(x):-1:1);
endfunction
