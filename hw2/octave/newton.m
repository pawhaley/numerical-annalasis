function guess=newton(guess,f,df,tol_y)
step=@(x) x-f(x)/df(x);
err_y=@(x) abs(f(x));
%abselute max number of steps, sometimes this method does not converge
N=10000;
while(N>0 && err_y(guess)>tol_y)
	N=N-1;
	guess=step(guess);
	disp([guess, f(guess)]);
end
endfunction
