format short e
f=@(x) (5-x) .* exp(x) -5;
df=@(x) 4*exp(x)-x.*exp(x);
[xfin x]=newton(5,f,df,1e-8);
%x has length 4
error=[];
for n=[1:length(x)-1]
	error=[error x(n)-xfin];
end
%error
constant=[];
for n=[1:length(error)-1]
	constant=[constant error(n+1)/error(n)^2];
end
%constant
C=mean(constant);
Eo=error(1);
Ef=@(Ex) Ex*df(xfin);
f_error=[Ef(Eo)];
for n=0:7
	Eo=C*Eo^2;
	f_error=[f_error abs(Ef(Eo))];
end
f_error
