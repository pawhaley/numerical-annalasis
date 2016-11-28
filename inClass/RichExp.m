function dx=RichExp(o , f , x , h)
	dx=sqrt(-1);
	if(o==0)
		dx=(f(x+h)-f(x-h))./(2*h);
		return;
	end
	dx=(RichExp(o-1 , f , x , h./2)- 2^(-2*o).*RichExp(o-1 , f , x , h)  )./(1-2^(-2*o));
endfunction
