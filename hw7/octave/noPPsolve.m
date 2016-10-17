function x=noPPsolve(A,y)
	[L,U]=mylu(A);
	x=usolve(U,lsolve(L,y));
endfunction
