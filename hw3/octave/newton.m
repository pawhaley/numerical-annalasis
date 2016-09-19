#newton(guess,f,df,tol_y,N)
#guess=initial x
#f=a function of one peramiter that gives the value of f(x)
#df=a function giving the derivitive of f at x
#tol_y=the tolerance in y the user wants to end up with
#N=maximum number of steps
function [guess x]=newton(guess,f,df,tol_y,N)
step=@(x) x-f(x)/df(x);
err_y=@(x) abs(f(x));
x=[guess];
disp("        x           f(x)       error");
#    "   4.9663e+00  -1.6564e-01   1.6564e-01"
disp([guess, f(guess), err_y(guess)]);
while(N>0 && err_y(guess)>tol_y)
	N=N-1;
	guess=step(guess);
	x=[x guess];
	disp([guess, f(guess), err_y(guess)]);
end
endfunction
