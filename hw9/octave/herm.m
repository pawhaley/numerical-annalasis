function yout=herm(x,y,yp,xeval)
i=2;
while(true)
	if(x(i-1)<=xeval && x(i)>xeval)
		break;
	end
	i+=1;
end
h=x(i)-x(i-1);
alph=3/h^2*(yp(i-1)+yp(i))+6/h^3*(y(i-1)-y(i));
yout=-yp(i-1)/h*((xeval-x(i))^2/2-h^2/2)+yp(i)/h*(xeval-x(i-1))^2/2;
yout+=alph*(xeval-x(i-1))^2*((xeval-x(i-1))/3-h/2)+y(i-1);
endfunction
