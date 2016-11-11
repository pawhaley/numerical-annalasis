function Qf=integrateQ(f,amin,bmax,x)
	#B=vander(x)'([length(x):-1:1],:);
	n=length(x);
	B=zeros(n,n);
	for i=[0:1:n-1]
		B(i+1,:)=x.^i;
	end
	b=zeros(1,n);
	for i=[1:1:n]
		b(i)=(bmax^i-amin^i)/i;
	end
	A=B\(b');
	Qf=0;
	for i=[1:1:n]
		Qf += A(i)*f(x(i));
	end
endfunction
