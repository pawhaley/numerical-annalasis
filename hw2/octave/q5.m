x_0=1;
f=@(x) exp(1-x.^2);
fp=@(x) (-2*x).*exp(1-x.^2);
fpp=@(x) (4*x.^2-2).*exp(1-x.^2);
fppp=@(x) (12*x-8*x.^3).*exp(1-x.^2);

x=[-4:.01:4];



p_0=@(x) f(x_0)+x-x;
p_1=@(x) p_0(x)+fp(x_0).*(x-x_0);
p_2=@(x) p_1(x)+1/2*fpp(x_0).*(x-x_0).^2;
p_3=@(x) p_2(x)+1/6*fppp(x_0).*(x-x_0).^3;
y=[p_0(x); p_1(x); p_2(x); p_3(x)];


for i=1:4
	subplot(2,2,i);
	plot(x,f(x),'k--',x,y(i,:),'k-');
	axis([-4,4,-.1,3]);
	title(strcat("Plot of P_",num2str(i-1),"(x) and f(x)"))
end

saveas(gcf,"q5fig.jpg");
