function n=errfind()
	n=2;
	while(true)
		x=linspace(0,2,n+1);
		p=polyfit(x,cos(3.*x),n);
		tx=rand(1,100000);
		ty=polyval(p,tx);
		em=max(abs(ty-cos(3*tx)))
		if(em<10^-6)
			return;
		end
		n+=1;
	end
endfunction
