function out=euler(pos,dpos,dt,t)
	out=pos+dpos(pos,t)*dt;
endfunction
