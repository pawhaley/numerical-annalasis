f=@(x) (5-x) .* exp(x) -5;
df=@(x) 4*exp(x)-x.*exp(x);
newton(5,f,df,1e-8);
