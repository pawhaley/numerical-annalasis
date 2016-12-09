I0=@(n) arrayfun( @(k) traprule(@(x) sin(x),0,pi,k), n);
I1=@(n) (I0(n*2)- 2^(-2).*I0(n)  )./(1-2^(-2));
I2=@(n) (I1(n*2)- 2^(-4).*I1(n)  )./(1-2^(-4));
I3=@(n) (I2(n*2)- 2^(-6).*I2(n)  )./(1-2^(-6));
N=2.^[0:9];
loglog(N,abs(I0(N)-2),'b');
hold on;
loglog(N,abs(I1(N)-2),'g');
loglog(N,abs(I2(N)-2),'r');
loglog(N,abs(I3(N)-2),'k');
hold off;

