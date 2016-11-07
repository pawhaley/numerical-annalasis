function [P,L,U]=myplu(A)
	n=length(A);
	p=[1:n];
	L=eye(n);
	U=A;
	for i=1:(n-1)
		[x,xi]=max(abs(U(i:n,i)));
		xi=xi+i-1;

		temp=p(i);
		p(i)=p(xi);
		p(xi)=temp;

		temp=U(i,i:n);
		U(i,i:n)=U(xi,i:n);
		U(xi,i:n)=temp;
		if i~=1
			temp=L(i,1:(i-1));
			L(i,1:(i-1))=L(xi,1:(i-1));
			L(xi,1:(i-1))=temp;
		end
		#we have now pivoted
		for j=(i+1):n
			k=U(j,i)/U(i,i);
			L(j,i)=k;
			U(j,i)=0;
			U(j,i+1:n)-=k*U(i,i+1:n);
		end
	end
	I=eye(n);
	P=I(p,:);
endfunction
