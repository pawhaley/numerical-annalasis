f=@(x) (x.^2-2*x+1)./(x.^2-x-2);
findzero(0,3,1e-3,f)
x=[0:.001:4];
plot(x,f(x));
axis([-Inf,Inf,-3,3]);
saveas(gcf,"q20fig.jpg");
