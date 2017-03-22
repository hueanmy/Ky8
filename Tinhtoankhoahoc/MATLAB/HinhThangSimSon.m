function [ ] = HinhThangSimSon( a,b,n,f )
h = (b-a)/n;
f0 = feval(f,a);
fn = feval(f,b);
S1 = 0;
S2 = 0;
for i=1:2:n-1
   S1 = S1 + feval(f,a+i*h);
end
for i = 2:2:n-2
    S2 = S2 + feval(f,a+i*h);
end

tichphan = (f0+fn+4*S1+2*S2)*h/3

end

