function yest=rest(x,y,r)
i=2;
while(true)
	if(x(i-1)<=r && r<x(i))
		break;
	end
	i+=1;
end
m=(y(i-1)-y(i))/(x(i-1)-x(i));
yest=m*(r-x(i))+y(i);
endfunction
