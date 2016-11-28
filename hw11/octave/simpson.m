function mintegral=simpson(f,a,b,nm)
	mintegral=[];
	for(n=nm)
		w=(b-a)./n;
		#there are n+1 points each with a midpoint thus n midpoints
		points=f(linspace(a,b,n+1));
		centers=f(linspace(a+w/2,b-w/2,n));
		estint=w/6*(points(1:n)+4*centers+points(2:n+1));
		integral=sum(estint);
		mintegral=[mintegral integral];
	end
endfunction
