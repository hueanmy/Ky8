x = [1 2 3 ]
y = [2 3 5]
u = [0.25 : 0.01 : 3.25]
v = polyinterp(x,y,u);
plot(x,y,'o',u,v,'-');