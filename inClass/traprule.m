function integral=traprule(f,a,b,n)
	w=(b-a)./n;
	cent=linspace(a+w,b-w,n-1);
	integral=w.*(1/2*f(a)+sum(f(cent))+1/2*f(b));
endfunction
