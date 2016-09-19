format short e
f=@(x) (5-x) .* exp(x) -5;
df=@(x) 4*exp(x)-x.*exp(x);
[xfin x]=newton(5,f,df,1e-8,1000);

#now I need to estimate the error of future steps of newtons method
#first i will get the errors assuming x_j-x_f=x_j-x_*.
#this is approximently true assuming that we are approching the zero and j>f
error=[];
for n=[1:length(x)-1]
	error=[error x(n)-xfin];
end
#assuming we are close to the zero we know that e_(k+1)/e_k^2 is a constant
#here we find those constants
constant=[];
for n=[1:length(error)-1]
	constant=[constant error(n+1)/error(n)^2];
end
disp("these valuse shuld be the same:");
disp(constant);
C=mean(constant);
Eo=error(1);
#this give a approximate error in f given a error in x
Ef=@(Ex) Ex*df(xfin);
f_error=[abs(Ef(Eo))];
for n=0:7
	Eo=C*Eo^2;
	f_error=[f_error abs(Ef(Eo))];
end
disp("approximate errors in y");
disp(f_error')
