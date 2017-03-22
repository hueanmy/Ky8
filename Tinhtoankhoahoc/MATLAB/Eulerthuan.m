function [  ] = Eulerthuan( f, t0, y0, h, time )
t = t0;
y = y0;
n = time/h;
for i = 1 : n
    y = y + h*feval(f,y,t)
    t = t + h;
    plot(t,y,'r*--'); hold on;
    
end
hamchinhxac = @(y,t)5*exp(-20*t) +(7/19.5)*(exp(-0.5*t)-exp(-20*t));
t = 0;
y = 5
for i = 1:n
giatrichinhxac = feval(hamchinhxac,y,t);
t = t +h;
plot(t,giatrichinhxac,'bo-');
end

end

