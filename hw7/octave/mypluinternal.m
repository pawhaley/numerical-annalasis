function [p,L,U]=mypluinternal(p,n,L,U)
n
len=length(U)
if len==n
	return;
end
[x,xi]=max(U(n:len,n));
xi=xi+n-1;

temp=p(n);
p(n)=p(xi);
p(xi)=temp;

temp=U(n,n:len);
U(n,n:len)=U(xi,n:len);
U(xi,n:len)=temp;

if n~=1
	temp=L(n,1:(n-1));
	L(n,1:(n-1))=L(xi,1:(n-1));
	L(xi,1:(n-1))=temp;
end

for i=(n+1):len
	k=U(i,n)/U(n,n);
	L(i,n)=k;
	U(i,n)=0;
	for b=n+1:len
		U(i,b)=U(i,b)-k*U(n,b);
	end
end
mypluinternal(p,n+1,L,U);
endfunction
