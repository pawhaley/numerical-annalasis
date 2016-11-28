f=@(x) sin(x);
x=pi/6;
fpp=@(h) (f(x+h)-2*f(x)+f(x-h))./(h.^2);
exponent=[-1:-1:-16];
h=10.^exponent;
[h',fpp(h)',abs(fpp(h)+sin(x))',h.^2']
