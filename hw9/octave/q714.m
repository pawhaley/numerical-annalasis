x=linspace(0,1,50)';
y=cos(4*x);
v=vander(x',10);
#note we want v*c=y, however this is imposible, as c does not have enough variables
c=v\y;
c2=(v'*v)\(v'*y);
format long e
c
c2
err=abs(c-c2)
