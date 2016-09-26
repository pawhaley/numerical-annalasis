f=@(x) (5-x).*exp(x)-5;
disp("exit with error test");

try
	[r,hist] = secant(f,4,5,1e-8,0,2);
	fhist=f(hist);
	xerr=[inf];
	for i=1:(length(hist)-1)
		xerr=[xerr abs(hist(i)-hist(i+1))];
	end
	#this is the desplayed line
	disp(
	"   x history   y history     error in y   error in x")
	#   5.0000e+00  -5.0000e+00   5.0000e+00   1.0000e+00
	disp([hist' fhist' abs(fhist)' xerr']);
catch ME
	disp(["exited with the error <",ME.message,">"]);
end
disp("");
disp("");



disp("exit with xtol");
[r,hist] = secant(f,4,5,1e-8,1e-2,1000);
fhist=f(hist);
xerr=[inf];
for i=1:(length(hist)-1)
	xerr=[xerr abs(hist(i)-hist(i+1))];
end
#this is the desplayed line
disp(
"   x history   y history     error in y   error in x")
#   5.0000e+00  -5.0000e+00   5.0000e+00   1.0000e+00
disp([hist' fhist' abs(fhist)' xerr']);
disp("");
disp("");



disp("normal run");
[r,hist] = secant(f,4,5,1e-8,0,1000);
fhist=f(hist);
xerr=[inf];
for i=1:(length(hist)-1)
	xerr=[xerr abs(hist(i)-hist(i+1))];
end
#this is the desplayed line
disp(
"   x history   y history     error in y   error in x")
#   5.0000e+00  -5.0000e+00   5.0000e+00   1.0000e+00
disp([hist' fhist' abs(fhist)' xerr']);
disp("");
disp("");
#We know that for secant method the error goes as 
#ek1=C ek^(1+sqrt(5))/2, so lets try to find C

#the error between x values and our r value is a 
#good estimation for the true xerr

xerr=[];
for i=1:(length(hist)-1)
	xerr=[xerr abs(hist(i)-r)];
end
c=[];
alpha=(1+sqrt(5))/2;
for i=1:(length(xerr)-1)
	c=[c (xerr(i+1))/(xerr(i)^alpha)];
end
C=median(c);
#using meadian to avoid erronious values
#near the zero a good approximation is that the slope <m> 
#is constant and that erry=m*errx assuming m is not close to zero

xerrpredic=[xerr(3)];
#i selected xerr(3) because the first couple of xerr are going to 
#be far away from the region where xerr goes as ek1=C ek^(1+sqrt(5))/2

for i=1:10
	xerrpredic=[xerrpredic  C*xerrpredic(length(xerrpredic))^alpha];
end
dy=(f(hist(length(hist)))-f(hist(length(hist)-1)));
dx=(hist(length(hist))-hist(length(hist)-1));
m=dy/dx;
yerrpredic=abs(m*xerrpredic);
yerrpredic=[nan nan yerrpredic];
#added two nan for the two values i didn't predict
yerr=abs(fhist);
while(length(yerrpredic)~=length(yerr))
	yerr=[yerr nan];
end
disp("actual and predicted errors in y");
#NaN in y error is a indication that 
#the error on that step was not evaluated

#NaN in predicted y error is a indication that 
#the error on that step was not predicted

disp(
"     actual        predicted");
disp(
"     y error       y error");
#    7.4020e+00    7.8420e+00
disp([yerr' yerrpredic']);

