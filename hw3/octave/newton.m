function [guess x]=newton(guess,f,df,tol_y)
step=@(x) x-f(x)/df(x);
err_y=@(x) abs(f(x));
%abselute max number of steps, sometimes this method does not converge
N=60;
x=[guess];
disp("        x           f(x)       error");
%    "   4.9663e+00  -1.6564e-01   1.6564e-01"
disp([guess, f(guess), err_y(guess)]);
while(N>0 && err_y(guess)>tol_y)
	N=N-1;
	guess=step(guess);
	x=[x guess];
	disp([guess, f(guess), err_y(guess)]);
end
endfunction
