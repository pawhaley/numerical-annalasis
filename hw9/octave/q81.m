year=[0:20:100]';
pop=[76.0,105.7,131.7,179.3,226.5,281.4]';
plot(year,pop,'o');
v=vander(year);
c=v\pop;
x=[0:.5:120];
hold on;
plot(x,polyval(c,x));
polyval(c,120)
hold off;
