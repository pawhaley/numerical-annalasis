function [P,L,U]=myplu(A)
	n=length(A);
	p=[1:n];
	L=eye(n);
	U=A;
	[p,L,U]=mypluinternal(p,1,L,U)
	I=eye(n);
	P=I(p,:);
endfunction
