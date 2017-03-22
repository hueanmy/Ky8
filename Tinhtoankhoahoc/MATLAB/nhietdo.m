function [  ] = nhietdo( t0,y0, h, time )
t = t0;
y = y0;
n = time/h;
dx = 30/n;
for i=1:n
y = (feval(t,i+1)-2*feval(t,i)+feval(t,i-1))/dx^2;
t = t + h;
plot(y,t,'r*--'); hold on;


end

