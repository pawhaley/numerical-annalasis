disp("5)");
x=[0:1:12]*pi/6;
A=[x ; sin(x) ; cos(x)]';
disp("      x      sin(x)    cos(x) ");
disp("   ===========================");
disp(A);

figure(1);
%  Plot function over large interval.
subplot(2,1,1)
x = [-6:.01:3];
plot(x,2*cos(x)-exp(x))  
title('plot of 2cos(x) - exp(x)')

%  Zoom in on smaller interval about one root.
subplot(2,1,2)
minx=-4.71688;
maxx=-4.71685;
dx=(maxx-minx)/10000;
xx = [minx:dx:maxx];
plot(xx,2*cos(xx)-exp(xx))  
title('zoomed view')

disp("\n6a)");
fprintf("zero estimated at:-4.717\n");


disp("\n6b)");

figure(2);
%  Plot function over large interval.
subplot(2,1,1)
x = [0:.01:4];
f=@(x) (4*x.*sin(x)-3)./(2+x.^2);
plot(x,f(x))  
title("plot of (4xsin(x)-3)/(2+x^2)")

%  Zoom in on smaller interval about one root.
subplot(2,1,2)
minx=.9333;
maxx=.93333;
dx=(maxx-minx)/10000;
xx = [minx:dx:maxx];
plot(xx,f(xx))  
title('zoomed view')


fprintf("zero estimated at:.933\n");

figure(3);
circ=@(x,y,r) plot(x+r*sin([0:.001:2*pi]),x+r*cos([0:.001:2*pi]),'k-');
circ(2,1,sqrt(2));
hold on;
title("two circles");
circ(2.5,0,sqrt(3.5));
axis equal;

disp("");
disp("7)");
disp("one intersect is at (.63,2.37), the other is at (2.37,.63)");

disp("");
disp("8)");
A=magic(5);
disp("magic square");
disp(A);
disp("sum of colums");
disp(sum(A));
disp("sum of rows");
disp(sum(A.'));
disp("sum of diagonals");
D=[0 0];
for i=[1:5]
	D(1)=D(1)+A(i,i);
	D(2)=D(2)+A(i,6-i);
end
disp(D);
