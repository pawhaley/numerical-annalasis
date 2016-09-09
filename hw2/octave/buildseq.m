function retval=buildseq(n)
retval=[];
f=@(x) .5*x+1;
x=1
for i=[1:n]
	retval=[retval x];
	x=f(x);
end
endfunction
