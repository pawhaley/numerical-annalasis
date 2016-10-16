function x=matrixSolve(A,b)
#make A upper triangular
for i=1:(length(A)-1)
	for j=i+1:length(A)
		k=A(j,i)/A(i,i);
		#A(j,i)=0; These values are never used again,
		#don't overide just remember they are zero
		A(j,[i+1:length(A)])-=k*A(i,[i+1:length(A)]);
		b(j)-=k*b(i);
	end
end
#our matrix A is "upper diagonal", not really but we have implied zeros.
#now make A diagonal
for i=length(A):-1:2
	for j=1:i-1
		b(j)-=b(i)*A(j,i)/A(i,i);
		#implied zeroing out of A
	end
end
#our matrix A is "diagonal", not really but we have implied zeros.
#now make A the identity matrix
for i=1:length(A)
	b(i)/=A(i,i);
	#A(i,i)/=A(i,i); implied
end
#our matrix A is "ientity", not really but implied.
x=b;

endfunction
