x=[.5];
n=10;
f=@(x) .5*(-x^2+x+2);
for i=1:n
	x=[x f(x(length(x)))];
end
x'
xerr=abs(1-x);
#assume we see end behavior start near the third itteration
xerrpredic=[nan,nan,xerr(3)];
while length(xerrpredic)~=length(xerr)
	xerrpredic=[xerrpredic abs(.5*xerrpredic(length(xerrpredic)))];
end
px=1:length(xerr);
figure(1);
plot(px,xerr,'ko','MarkerSize', 20,px,xerrpredic,'k+','MarkerSize', 20);
legend("|error|","|predicted error|");
saveas(gcf,"f1.jpg");
figure(2);
plot(px,log(xerr),'ko','MarkerSize', 20,px,log(xerrpredic),'k+','MarkerSize', 20);
legend("log(|error|)","log(|predicted error|)");
saveas(gcf,"f2.jpg");
