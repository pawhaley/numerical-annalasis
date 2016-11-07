R=@(x) 1./(x.^2+1);
px=[-4:.01:4]';
plot(px,R(px));
x=linspace(-5,5,13);
fx=R(x);
y=interp1(x,fx,px);
hold on;
plot(px,y,'r-');
h=12/10
dxR=@(x) -2*x./(x.^2+1).^2;
fpx=dxR(x);
for i=[1:length(px)]
	y(i)=herm(x,fx,fpx,px(i));
end
plot(px,y,'g-');
hold off;
figure(2);
plot(px,abs(y-R(px)));

