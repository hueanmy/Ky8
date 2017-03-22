function [ ] = HinhThang(a,b,n,f)
h = (b-a)/n;
fa = feval(f,a);
fb = feval(f,b);
S = 0;
for i=1:(n-1)
   S = S+ feval(f,a+i*h);
end
tichphan = (fa+2*S+fb)*h/2
end

