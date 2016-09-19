newtonRunner=@(f,df,x) newton(x,f,df,-1,5);

format long e
f=@(x) sin(x);
df=@(x) cos(x);
newtonRunner(f,df,3);

f=@(x) x^3-x^2-2*x;
df=@(x) 3*x^2-2*x-2;
newtonRunner(f,df,3);

f=@(x) 1-.01*x;
df=@(x) -.01;
newtonRunner(f,df,1);
