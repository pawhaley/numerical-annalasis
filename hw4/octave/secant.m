function  [r,hist] = secant(f,x0,x1,ftol,xtol,Nmax)
m=@(xk,xk1) (f(xk)-f(xk1))/(xk-xk1);
xk2=@(xk,xk1) xk1-f(xk1)/m(xk,xk1);
xk2h=@(hist) xk2(hist(length(hist)-1),hist(length(hist)));
hist=[x0 x1];
r=x1;
exit1=@(hist) abs(f(hist(length(hist))))<=ftol;
exit2=@(hist) abs(hist(length(hist))-hist(length(hist)-1))<=xtol;
while(~(exit1(hist) || exit2(hist)))
	if(length(hist)-2>Nmax)
		error("more than Nmax iterations");
	end
	hist=[hist xk2h(hist)];
end
r=hist(length(hist));
endfunction
