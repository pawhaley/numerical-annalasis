x=[0:20:40]';
y=[76.0,105.7,131.7]';
t1=@(X) y(1)*((X-x(2)).*(X-x(3)))./((x(1)-x(2)).*(x(1)-x(3)));
t2=@(X) y(2)*((X-x(1)).*(X-x(3)))./((x(2)-x(1)).*(x(2)-x(3)));
t3=@(X) y(3)*((X-x(1)).*(X-x(2)))./((x(3)-x(1)).*(x(3)-x(2)));
L=@(X) t1(X)+t2(X)+t3(X);
#this is the Lagrange form

A=[1,0,0;1,x(2)-x(1),0;1,x(3)-x(1),(x(3)-x(1))*(x(3)-x(2))];
a=A\y
N=@(X) a(1)+a(2)*(X-x(1))+a(3).*(X-x(1)).*(X-x(2));
#this is the newton form

#to quickly verifi that they are the same
r=(rand(20000,1)-.5)*400;
l=L(r);
n=N(r);
dif=abs(l-n);
errorval=sum(dif)
