x=linspace(0,pi,1000);
y=sin(x);
r=rand(100,1)*pi;
ry=sin(r);
Rest=r;
for i=[1:length(r)]
	Rest(i)=rest(x,y,r(i));
end
abserr=max(abs(Rest-ry))
relerr=max(abs((Rest-ry)./ry))
