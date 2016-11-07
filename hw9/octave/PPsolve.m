function x=PPsolve(A,x)
[P,L,U]=myplu(A);
x=usolve(U,lsolve(L,P*x));
end
