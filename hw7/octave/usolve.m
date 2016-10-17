function x=usolve(U,y)
	n=length(y);
	x=zeros(n,1);
	for(i=n:-1:1)
		#calc x
		x(i)=y(i)/U(i,i);
		#eliminate entries
		#note that we will not acctualy change the values of U only
		#remember that all terms furthur out than i are zero's
		y(1:(i-1))=y(1:(i-1))-x(i)*U(1:(i-1),i);
	end
endfunction
