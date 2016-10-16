function [L,U]=mylu(A)
	n=length(A);
	L=eye(n);
	U=A;
	for i=1:(n-1)
		for j=i+1:n
			k=U(j,i)/U(i,i);
			L(j,i)=k;
			U(j,i)=0;
			U(j,i+1:n)-=k*U(i,i+1:n);
		end
	end
endfunction
