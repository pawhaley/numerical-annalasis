function integrate=glquad(f,a,b,N)
lin=linspace(a,b,N+1);
suma=0;
for i=1:N
	suma+=recurse(f,lin(i),lin(i+1));
end
integrate=suma;




endfunction


function inte=recurse(f,a,b)
alp=1./3*sqrt(5-2\sqrt(10/7));
bet=1./3*sqrt(5+2\sqrt(10/7));
gl=([-bet,-alp,0,alp,bet]+1)/2*(b-a)+a;


p=polyfit(gl,f(gl),4);
pow=[5:-1:1];
xp=((b).^pow-(a).^pow)./pow;
inte=xp*p';


endfunction






