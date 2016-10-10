function x=usolve(U,y)
	n=length(y);
	x=zeros(n,1);
	for(i=n:-1:1)
		#calc x
		x(i)=y(i)/U(i,i);
		#eliminate entries
		#note that we will not acctualy change the values of U only
		#remember that all terms furthur out than i are zero's
		for(j=1:(i-1))
			y(j)=y(j)-x(i)*U(j,i);
		end
	end
endfunction
