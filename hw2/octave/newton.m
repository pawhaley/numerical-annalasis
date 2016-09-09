function guess=newton(guess,f,df,tol_y)
step=@(x) x-f(x)/df(x);
err_y=@(x) abs(f(x));
%abselute max number of steps, sometimes this method does not converge
N=10000;
n=0;
px=[];
py=[];
while(N>0 && err_y(guess)>tol_y)
	N=N-1;
	guess=step(guess);
	disp([guess, f(guess)]);
	px=[px,n];
	py=[py,f(step(guess))/f(guess)];
	n=n+1;
end
plot(px,abs(py),'x-');
endfunction
