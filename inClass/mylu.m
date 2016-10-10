function [L,U]=mylu(A)
	n=length(A);
	L=eye(n);
	U=A;
	for i=1:(n-1)
		for j=i+1:n
			k=U(j,i)/U(i,i);
			L(j,i)=k;
			U(j,i)=0;
			for b=i+1:n
				U(j,b)=U(j,b)-k*U(i,b);
			end
		end
	end
endfunction
