function out=orbit(pos,dt,t,m);
#pos=[x,y,dx,dy]
distance=@(pos) sqrt(pos(1)^2+pos(2)^2);
dpos=@(pos,t) [pos(3),pos(4),-pos(1)/distance(pos)^3,-pos(2)/distance(pos)^3];
n=ceil(t/dt);
px=zeros(1,n);
py=zeros(1,n);
for i=1:n
	px(i)=pos(1);
	py(i)=pos(2);
	pos=m(pos,dpos,dt,t);
end
plot(px,py);
axis('equal');
