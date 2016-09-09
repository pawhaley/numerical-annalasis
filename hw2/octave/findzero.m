function retval=findzero(a,b,tol,f)
retval=(a+b)/2;
fa=f(a);
fb=f(b);
%lets make a have the negative val of f
if(sign(fa)>sign(fb))
	temp=b;
	b=a;
	a=temp;
	temp=fa;
	fa=fb;
	fb=temp;
end
err=abs(a-b)/2;
while(err>tol)
	disp([a,b]);
	err=err/2;
	temp=f(retval);
	if(sign(temp)<1)
		a=retval;
		fa=temp;
	else
		b=retval;
		fb=temp;
	end
	retval=(a+b)/2;
end
endfunction
