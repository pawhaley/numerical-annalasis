function out=RK4(pos,dpos,dt,t)
	s1=dpos(pos,t);
	s2=dpos(pos+s1*dt/2,t+dt/2);
	s3=dpos(pos+s2*dt/2,t+dt/2);
	s4=dpos(pos+s3*dt,t);
	out=pos+(s1+2*s2+2*s3+s4)*dt/6;
endfunction
