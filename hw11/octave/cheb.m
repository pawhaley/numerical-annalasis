realInt=2*(sin(1)-cos(1));
for i=4:2:8
	ceb=cos(pi+pi*[0:i]/i);
	f=@(x) x.*sin(x);
	p=polyfit(ceb,f(ceb),i);
	pow=[i+1:-1:1];
	xp=(1-(-1).^pow)./pow;
	inte=xp*p';
	err=abs(inte-realInt)
end
