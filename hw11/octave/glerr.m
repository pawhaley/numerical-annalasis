realInt=2*(sin(1)-cos(1));
for i=[1, 2, 4,10]
	f=@(x) x.*sin(x);
	err=abs(glquad(f,-1,1,i)-realInt)
end
