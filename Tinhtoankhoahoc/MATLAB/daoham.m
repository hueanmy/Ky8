n = 4/h;
f= @(x)x*exp(x)+sin(x);
df = @(x)x*exp(x)+exp(x)+cos(x);
for i=1:n
    x(i) = -2+i*h;
    fx(i)=feval(f,x(i));
    ffx(i)=feval(f,x(i)+h);
    bfx(i)=feval(f,x(i)-h);
    spt(i)=(ffx(i)-fx(i))/h;
    spn(i)=(fx(i)-bfx(i))/h;
    sptt(i)=(ffx(i)-bfx(i))/(2*h);
    dhcx(i)=feval(df,x(i));
end
plot(x,spt,'r-*'); hold on;
plot(x,spn,'b-o');
plot(x,sptt,'g-+');
plot(x,dhcx,'bl--');
