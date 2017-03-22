x = -8:0.5:8;
y = -8:0.5:8;
[X,Y]=meshgrid(x,y);
R=sqrt(X.^2+Y.^2)+eps;
Z = sin(R)./R;
mesh(X,Y,Z);
surf(X,Y,Z);