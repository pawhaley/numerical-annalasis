A=[10 -3;4 2];
B=[1 0;-1 2];
v=[1;2];
w=[1;1];

disp("1a");
disp(v.' * w);

disp("1b");
disp(v * w.');

disp("1c");
disp(A*v);

disp("1d");
disp(A.'*v);

disp("1e");
disp(A*B);

disp("1f");
disp(B*A);

disp("1g");
disp(A^2);

y=inverse(B)*w;
disp("1h");
disp(y);

x=inverse(A)*v;
disp("1i");
disp(x);


disp("");

x=[7,1,8,2];
p=@(t) -1+3*t-2*t.^2;
disp("2");
disp(p(x));


disp("");

y=@(C,x) C*exp(x);
x=[-1:.05:1];
P=@(c)plot(x,y(c,x),"k-");
figure(1);
hold off;
P(1);
hold on;
P(.5);
P(0);
P(-.5);
P(-1);
legend("C=1","C=.5","C=0","C=-.5","C=-1");
xlabel("X");
ylabel("Y");
title("Y=Ce^x");
hold off;

disp("");

logistic=@(x) (1+exp(-x)).^-1;
disp("4b");
disp(logistic(0));
disp(logistic(1));
disp(logistic([0,1]));

x=[-2:.01:2];
figure(2);
plot(x,logistic(x),'k-',1,logistic(1),'rs');
xlabel("X");
ylabel("Y");
title("Y=logistic(x)");
