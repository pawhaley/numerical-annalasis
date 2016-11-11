function x=ltrisolve(L,b)
S=size(L);
if(S(1)~=S(2))
	error("L is not square");
end
if(length(b)~=S(1))
	error("b is not compatable");
end
for(i=1:length(b))
	b(i)=b(i)/L(i,i);
	b([i+1:length(b)])=b([i+1:length(b)])-b(i)*L([i+1:length(b)],i);
end
x=b;
endfunction
